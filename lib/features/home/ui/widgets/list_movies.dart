import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/core/helper/extentions.dart';
import 'package:movie_app/core/router/routes.dart';
import 'package:movie_app/features/home/data/models/response/movie_model.dart';

class ListMovies extends StatelessWidget {
  const ListMovies({
    Key? key,
    required this.films,
  }) : super(key: key);
  final List<MovieModel> films;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.builder(
        itemBuilder: (context, index) => ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: InkWell(
            onTap: () {
              context.pushNamed(
                Routes.detailsScreen,
                arguments: films[index],
              );
            },
            child: Padding(
              padding: EdgeInsets.only(left: index == 0 ? 0 : 6),
              child: SizedBox(
                height: 110,
                width: 112,
                child: FancyShimmerImage(
                  imageUrl: films[index].image!,
                ),
              ),
            ),
          ),
        ),
        scrollDirection: Axis.horizontal,
        itemCount: films.length,
      ),
    );
  }
}
