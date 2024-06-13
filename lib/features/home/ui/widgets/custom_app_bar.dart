import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_app/core/themes/colors_manager.dart';
import 'package:movie_app/core/widgets/custom_text_form_field.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  bool isSearch = false;
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(
          'assets/svg/list_app_bar.svg',
        ),
        Container(
          width: 225.w,
          height: 40.h,
          decoration: BoxDecoration(
            color: ColorsManager.lightGrey.withOpacity(.5),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              if (!isSearch)
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/svg/search_image.svg',
                  ),
                ),
              if (!isSearch) const Spacer(),
              if (!isSearch)
                IconButton(
                  onPressed: () {
                    setState(() {
                      isSearch = !isSearch;
                    });
                  },
                  icon: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
              if (isSearch)
                Expanded(
                  child: CustomTextFormField(
                    enabledBorder: InputBorder.none,
                    hintText: 'Search',
                    controller: searchController,
                    focusedBorder: InputBorder.none,
                    backGroundColor: ColorsManager.lightGrey.withOpacity(.0),
                  ),
                ),
              if (isSearch)
                IconButton(
                  onPressed: () {
                    setState(() {
                      isSearch = !isSearch;
                    });
                  },
                  icon: const Icon(Icons.keyboard_arrow_right_outlined),
                ),
            ],
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notifications_outlined,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
