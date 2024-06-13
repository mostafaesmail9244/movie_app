import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/core/helper/spacing_helper.dart';
import 'package:movie_app/core/themes/text_styles.dart';
import 'package:movie_app/core/widgets/background_widget.dart';
import 'package:movie_app/features/home/data/models/response/film_model.dart';
import 'package:movie_app/features/home/ui/widgets/carousel_slider_widget.dart';
import 'package:movie_app/features/home/ui/widgets/custom_app_bar.dart';

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
                  ListFilm(films: comedyFilms),
                  verticalSpacing(20),
                  //comedy
                  Text('Fantasy', style: TextStyles.font13WhiteSemiBold),
                  verticalSpacing(5),
                  ListFilm(films: comedyFilms),
                  //fantasy
                  verticalSpacing(20),
                  Text('Fantasy', style: TextStyles.font13WhiteSemiBold),
                  verticalSpacing(5),
                  ListFilm(films: fantasyFilms),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ListFilm extends StatelessWidget {
  const ListFilm({
    Key? key,
    required this.films,
  }) : super(key: key);
  final List<FilmModel> films;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.builder(
        itemBuilder: (context, index) => ClipRRect(
          borderRadius: BorderRadius.circular(16),
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
        scrollDirection: Axis.horizontal,
        itemCount: films.length,
      ),
    );
  }
}
