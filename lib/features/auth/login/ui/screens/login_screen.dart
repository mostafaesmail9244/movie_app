import 'package:flutter/material.dart';
import 'package:movie_app/core/helper/extentions.dart';
import 'package:movie_app/core/helper/spacing_helper.dart';
import 'package:movie_app/core/themes/text_styles.dart';
import 'package:movie_app/core/widgets/background_widget.dart';
import 'package:movie_app/features/auth/login/ui/widgets/email_and_pass.dart';
import 'package:movie_app/features/auth/login/ui/widgets/social_buttons.dart';

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
                color: const Color(0xffD9D9D9),
                borderRadius: BorderRadius.circular(15),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const EmailAndPassword(),
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
                    verticalSpacing(15),
                    const SocialButtons(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
