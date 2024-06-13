import 'package:flutter/material.dart';
import 'package:movie_app/core/helper/app_regex.dart';
import 'package:movie_app/core/helper/extentions.dart';
import 'package:movie_app/core/helper/spacing_helper.dart';
import 'package:movie_app/core/themes/colors_manager.dart';
import 'package:movie_app/core/themes/text_styles.dart';
import 'package:movie_app/core/widgets/custom_text_form_field.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool isSecure = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Text('Login', style: TextStyles.font24Black700),
          verticalSpacing(20),
          CustomTextFormField(
            hintText: 'email',
            controller: emailController,
            validator: (val) {
              if (val!.isEmpty || !AppRegex.isEmailValid(val)) {
                return 'Please enter a valid email';
              }
            },
          ),
          verticalSpacing(20),
          CustomTextFormField(
            hintText: 'password',
            controller: passwordController,
            validator: (val) {
              if (val!.isEmpty) {
                return 'Please enter a valid password';
              }
            },
            sufficIcon: IconButton(
              onPressed: () {
                setState(() {
                  isSecure != isSecure;
                });
              },
              icon: Icon(isSecure ? Icons.visibility_off : Icons.visibility),
            ),
          ),
          verticalSpacing(15),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Forgot Password?',
                style: TextStyles.font14BlueSemiBold,
              ),
            ),
          ),
          verticalSpacing(15),
          SizedBox(
            width: context.deviceWidth * 0.6,
            child: ElevatedButton(
              onPressed: () {
                //go to home screen
                if (_formKey.currentState!.validate()) {
                  print('login successfully');
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorsManager.lightPurple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                'Login',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
