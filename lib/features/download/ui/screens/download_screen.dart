import 'package:flutter/material.dart';
import 'package:movie_app/core/helper/extentions.dart';
import 'package:movie_app/core/helper/spacing_helper.dart';
import 'package:movie_app/core/router/routes.dart';
import 'package:movie_app/core/themes/text_styles.dart';
import 'package:movie_app/core/widgets/background_widget.dart';
import 'package:movie_app/features/download/data/models/download_model.dart';
import 'package:movie_app/features/download/ui/widgets/download_card_widget.dart';

class DownloadScreen extends StatelessWidget {
  const DownloadScreen({super.key});

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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Download',
                    style: TextStyles.font14WhiteSemiBold,
                  ),
                ),
                verticalSpacing(40),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          context.pushNamed(
                            Routes.detailsScreen,
                            arguments: downloadList[index],
                          );
                        },
                        child: MovieCard(
                          movieModel: downloadList[index],
                        ),
                      ),
                      itemCount: downloadList.length,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
