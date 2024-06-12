import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/core/themes/colors_manager.dart';
import 'package:movie_app/core/themes/text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final TextEditingController? controller;
  final TextStyle? hintStyle;
  final int? maxLines;
  final EdgeInsetsGeometry? padding;
  final TextInputType? inputType;
  final bool? isObsecureText;
  final Function(String?)? validator;
  final Widget? sufficIcon;
  final Iterable<String>? autoFill;
  final Widget? prefixIcon;
  final String hintText;
  final Color? backGroundColor;
  const CustomTextFormField(
      {super.key,
      this.enabledBorder,
      this.focusedBorder,
      this.controller,
      this.hintStyle,
      this.maxLines,
      this.padding,
      this.inputType,
      this.isObsecureText,
      this.validator,
      this.sufficIcon,
      required this.hintText,
      this.prefixIcon,
      this.backGroundColor,
      this.autoFill});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: maxLines ?? 1,
      autofillHints: autoFill,
      obscureText: isObsecureText ?? false,
      decoration: InputDecoration(
        isDense: true,
        prefix: prefixIcon,
        filled: true,
        fillColor: backGroundColor ?? ColorsManager.moreLightGrey,
        hintText: hintText,
        hintStyle: hintStyle ?? TextStyles.font14LightGreyRegular,
        contentPadding:
            padding ?? EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
        suffixIcon: sufficIcon,
        //TODO:add error Border
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: ColorsManager.mainBlue, width: 1.3),
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: ColorsManager.fillRed, width: 1.3),
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: ColorsManager.fillRed, width: 1.3),
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
        ),
        enabledBorder: enabledBorder ??
            const OutlineInputBorder(
              borderSide:
                  BorderSide(color: ColorsManager.lighterGrey, width: 1.3),
              borderRadius: BorderRadius.all(Radius.circular(16.0)),
            ),
        focusedBorder: focusedBorder ??
            const OutlineInputBorder(
              borderSide: BorderSide(color: ColorsManager.mainBlue, width: 1.3),
              borderRadius: BorderRadius.all(Radius.circular(16.0)),
            ),
      ),
      keyboardType: inputType ?? TextInputType.text,
      style: TextStyles.font14DarkBlueMedium,
      validator: (value) {
        return validator!(value);
      },
    );
  }
}
