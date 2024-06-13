import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/core/helper/extentions.dart';
import 'package:movie_app/core/helper/spacing_helper.dart';
import 'package:movie_app/core/router/routes.dart';
import 'package:movie_app/core/themes/text_styles.dart';
import 'package:movie_app/core/widgets/background_widget.dart';
import 'package:movie_app/features/home/data/models/response/movie_model.dart';
import 'package:movie_app/features/home/ui/widgets/carousel_slider_widget.dart';
import 'package:movie_app/features/home/ui/widgets/custom_app_bar.dart';
import 'package:movie_app/features/home/ui/widgets/list_movies.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 8,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomAppBar(),
                  verticalSpacing(10),
                  Text(
                    'Popular Now',
                    style: TextStyles.font13WhiteSemiBold,
                  ),
                  verticalSpacing(10),
                  const CarouselSliderWidget(),
                  verticalSpacing(20),
                  //actions
                  Text('Action', style: TextStyles.font13WhiteSemiBold),
                  verticalSpacing(5),
                  ListMovies(films: actionMovies),
                  verticalSpacing(20),
                  //comedy
                  Text('Fantasy', style: TextStyles.font13WhiteSemiBold),
                  verticalSpacing(5),
                  ListMovies(films: comedyMovies),
                  //fantasy
                  verticalSpacing(20),
                  Text('Fantasy', style: TextStyles.font13WhiteSemiBold),
                  verticalSpacing(5),
                  ListMovies(films: fantasyMovies),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
