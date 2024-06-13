// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/core/helper/extentions.dart';
import 'package:readmore/readmore.dart';

import 'package:movie_app/core/helper/spacing_helper.dart';
import 'package:movie_app/core/themes/colors_manager.dart';
import 'package:movie_app/core/themes/font_weight_helper.dart';
import 'package:movie_app/core/themes/text_styles.dart';
import 'package:movie_app/features/home/data/models/response/movie_model.dart';
import 'package:movie_app/features/home/ui/widgets/rate_widget.dart';

class MovieDetailsWidget extends StatelessWidget {
  const MovieDetailsWidget({
    Key? key,
    required this.movie,
  }) : super(key: key);
  final MovieModel movie;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.deviceHeight * 0.62,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: ColorsManager.moreLightGrey.withOpacity(0.8),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              movie.image!,
              height: 200.h,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  maxLines: 2,
                  movie.name!,
                  style: TextStyles.font24WhiteBold
                      .copyWith(overflow: TextOverflow.ellipsis),
                ),
              ),
              const RateWidget()
            ],
          ),
          verticalSpacing(10),
          Row(
            children: [
              Text(
                movie.type!,
                style: TextStyles.font14PurpleRegular,
              ),
              horizontalSpacing(40),
              Text(
                '+ ${movie.age!}',
                style: TextStyles.font14PurpleRegular,
              ),
              const Spacer(),
              Text(
                'From ${movie.rating} users',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontWeight: FontWeightHelper.regular,
                  fontSize: 14.sp,
                ),
              ),
            ],
          ),
          verticalSpacing(15),
          Text(
            movie.description!,
            style: TextStyles.font16LightBlackMedium,
          ),
          // ReadMoreText(
          //   movie.description!,
          //   trimMode: TrimMode.Line,
          //   trimLines: 3,
          //   colorClickableText: Colors.pink,
          //   trimCollapsedText: 'Show more',
          //   trimExpandedText: 'Show less',
          //   style: TextStyles.font16LightBlackMedium,
          //   moreStyle: TextStyles.font13DarkBlueRegular,
          // ),
        ],
      ),
    );
  }
}
