// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:movie_app/core/helper/extentions.dart';
import 'package:movie_app/core/helper/spacing_helper.dart';
import 'package:movie_app/core/themes/text_styles.dart';
import 'package:movie_app/core/widgets/background_widget.dart';
import 'package:movie_app/features/home/data/models/response/movie_model.dart';
import 'package:movie_app/features/home/ui/widgets/detials_screen_button.dart';
import 'package:movie_app/features/home/ui/widgets/feed_back_widget.dart';
import 'package:movie_app/features/home/ui/widgets/movie_detials_widget.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
    Key? key,
    required this.movie,
  }) : super(key: key);
  final MovieModel movie;
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
                  //back button
                  IconButton(
                      onPressed: () {
                        context.pop();
                      },
                      icon: const Icon(Icons.arrow_back_ios_new)),
                  //movie details
                  MovieDetailsWidget(
                    movie: movie,
                  ),
                  verticalSpacing(20),
                  const DetialsScreenButtons(),
                  verticalSpacing(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Feedback',
                          style: TextStyles.font14LightGreyRegular),
                      const FaIcon(FontAwesomeIcons.edit)
                    ],
                  ),
                  verticalSpacing(10),
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Padding(
                        padding: EdgeInsets.only(left: index == 0 ? 0 : 10),
                        child: const FeedbackWidget(),
                      ),
                      itemCount: 5,
                    ),
                  ),
                  verticalSpacing(20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
