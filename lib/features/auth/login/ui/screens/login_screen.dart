import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:movie_app/core/helper/extentions.dart';
import 'package:movie_app/core/helper/spacing_helper.dart';
import 'package:movie_app/core/themes/colors_manager.dart';
import 'package:movie_app/core/themes/text_styles.dart';
import 'package:movie_app/core/widgets/background_widget.dart';
import 'package:movie_app/core/widgets/custom_text_form_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    super.key,
  });

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BackgroundWidget(
          child: Center(
            child: Container(
              width: context.deviceWidth * 0.8,
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 18,
              ),
              height: context.deviceHeight * 0.6,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Text('Login', style: TextStyles.font24Black700),
                  verticalSpacing(20),
                  CustomTextFormField(
                    hintText: 'email',
                    controller: emailController,
                    validator: (val) {},
                  ),
                  verticalSpacing(20),
                  CustomTextFormField(
                    hintText: 'password',
                    controller: passwordController,
                    validator: (val) {},
                    sufficIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.remove_red_eye_outlined)),
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
                      onPressed: () {},
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
                  verticalSpacing(15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 1,
                        width: context.deviceWidth * 0.2,
                        color: Colors.grey.shade300,
                      ),
                      Text(
                        'or continue with',
                        style: TextStyles.font13GrayRegular,
                      ),
                      Container(
                        height: 1,
                        width: context.deviceWidth * 0.2,
                        color: Colors.grey.shade300,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
