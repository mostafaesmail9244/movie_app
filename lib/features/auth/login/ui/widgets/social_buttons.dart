import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_app/core/themes/colors_manager.dart';
import 'package:movie_app/core/widgets/gradient_border_button.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GradientBorderButton(
          gradient: const LinearGradient(
            colors: [
              ColorsManager.lightPurple,
              Colors.white,
            ],
          ),
          onPressed: () {},
          child: SvgPicture.asset(
            'assets/svg/google_button.svg',
          ),
        ),
        GradientBorderButton(
          gradient: const LinearGradient(
            colors: [Color(0xffFD06D5), Colors.white],
          ),
          onPressed: () {},
          child: const FaIcon(
            FontAwesomeIcons.facebook,
            color: Color.fromRGBO(59, 89, 152, 1),
          ),
        ),
      ],
    );
  }
}
