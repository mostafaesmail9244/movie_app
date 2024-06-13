import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/core/helper/spacing_helper.dart';

import 'package:movie_app/core/themes/colors_manager.dart';
import 'package:movie_app/core/themes/text_styles.dart';

class FeedbackWidget extends StatelessWidget {
  const FeedbackWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80.h,
        width: 180.w,
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: ColorsManager.moreLightGrey.withOpacity(0.8),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CircleAvatar(
                  radius: 15,
                  backgroundImage: NetworkImage(
                      'https://th.bing.com/th/id/OIP.UGlKxiZQylR3CnJIXSbFIAHaLL?w=186&h=281&c=7&r=0&o=5&pid=1.7'),
                ),
                horizontalSpacing(10),
                Expanded(
                  child: Text(
                    'this movie is good',
                    style: TextStyles.font13DarkBlueMedium,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.error_outline_outlined,
                    color: Colors.redAccent,
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
