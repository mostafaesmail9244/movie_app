import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:movie_app/core/helper/extentions.dart';
import 'package:movie_app/core/helper/spacing_helper.dart';
import 'package:movie_app/core/themes/colors_manager.dart';
import 'package:movie_app/core/themes/text_styles.dart';
import 'package:movie_app/features/home/data/models/response/movie_model.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({
    Key? key,
    required this.movieModel,
  }) : super(key: key);
  final MovieModel movieModel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.deviceWidth * 0.8,
      height: 145.h,
      child: Card(
        color: ColorsManager.moreLightGrey,
        shadowColor: ColorsManager.lightPurple,
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  movieModel.image!,
                  fit: BoxFit.cover,
                  height: 145.h,
                  width: 112.w,
                ),
              ),
              horizontalSpacing(8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    verticalSpacing(5),
                    Text(
                      movieModel.name!,
                      style: TextStyles.font18BlackBold,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(movieModel.type!,
                            style: TextStyles.font14PurpleRegular),
                        Text('+${movieModel.age}',
                            style: TextStyles.font14PurpleRegular),
                      ],
                    ),
                    Text(
                      movieModel.description!,
                      style: TextStyles.font14GreyRegular.copyWith(height: 1.2),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(
                          Icons.file_download_outlined,
                          color: ColorsManager.lightPurple,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.favorite_border),
                        )
                      ],
                    ),
                    horizontalSpacing(10),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
