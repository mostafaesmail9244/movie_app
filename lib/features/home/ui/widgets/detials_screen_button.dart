import 'package:flutter/material.dart';
import 'package:movie_app/core/helper/spacing_helper.dart';
import 'package:movie_app/core/themes/colors_manager.dart';
import 'package:movie_app/core/themes/text_styles.dart';
import 'package:movie_app/core/widgets/gradient_border_button.dart';

class DetialsScreenButtons extends StatelessWidget {
  const DetialsScreenButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //play button
        GradientBorderButton(
          gradient: const LinearGradient(
            colors: [Color(0xffFD06D5), Colors.white],
          ),
          backgroundColor: Colors.black,
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.play_arrow_rounded,
                color: ColorsManager.lightPurple,
              ),
              horizontalSpacing(5),
              Text(
                'Play Now',
                style: TextStyles.font14GreyRegular
                    .copyWith(color: ColorsManager.lightPurple),
              ),
            ],
          ),
        ),
        verticalSpacing(10),
        // download button
        GradientBorderButton(
          gradient: const LinearGradient(
            colors: [Color(0xffFD06D5), Colors.white],
          ),
          backgroundColor: Colors.black,
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.file_download_outlined,
                  color: ColorsManager.lightPurple),
              horizontalSpacing(5),
              Text(
                'Download',
                style: TextStyles.font14GreyRegular
                    .copyWith(color: ColorsManager.lightPurple),
              ),
            ],
          ),
        ),
        verticalSpacing(10),
        // share button
        GradientBorderButton(
          gradient: const LinearGradient(
            colors: [Color(0xffFD06D5), Colors.white],
          ),
          backgroundColor: Colors.black,
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.share_outlined,
                  color: ColorsManager.lightPurple),
              horizontalSpacing(5),
              Text(
                'Share with Friends',
                style: TextStyles.font14GreyRegular
                    .copyWith(color: ColorsManager.lightPurple),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
