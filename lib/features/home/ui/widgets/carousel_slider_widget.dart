// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:movie_app/core/helper/extentions.dart';
import 'package:movie_app/core/router/routes.dart';
import 'package:movie_app/features/home/data/models/response/movie_model.dart';

class CarouselSliderWidget extends StatelessWidget {
  const CarouselSliderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.h,
      width: double.infinity,
      child: CarouselSlider.builder(
        itemCount: 10,
        disableGesture: false,
        itemBuilder: (context, index, realIndex) => Padding(
          padding: const EdgeInsets.symmetric(horizontal:  8.0),
          child: InkWell(
              onTap: () {
                context.pushNamed(
                  Routes.detailsScreen,
                  arguments: popularMovies[index],
                );
              },
              child: CarouselItem(
                image: popularMovies[index].image!,
              )),
        ),
        options: CarouselOptions(
          initialPage: 0,
          reverse: false,
          pauseAutoPlayOnTouch: true,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          // enlargeCenterPage: true,
          enlargeFactor: 0.3,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

class CarouselItem extends StatelessWidget {
  const CarouselItem({
    Key? key,
    required this.image,
  }) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: FancyShimmerImage(
        imageUrl: image,
        height: 120.h,
        width: double.infinity,
      ),
    );
  }
}
