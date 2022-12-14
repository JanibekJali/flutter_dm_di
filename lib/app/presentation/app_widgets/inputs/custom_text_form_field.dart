import 'package:flutter/material.dart';

import '../../app_constants/colors/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    @required this.controller,
    @required this.hintText,
    Key key,
  }) : super(key: key);

  final TextEditingController controller;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      // style: AppTextStyles.mulishBlack16w600,
      decoration: InputDecoration(
        hintText: hintText,
        // hintStyle: AppTextStyles.mulishBlack14w600.copyWith(
        //   color: AppColors.black.withOpacity(0.5),
        // ),
        fillColor: AppColors.textFormFieldBgColor,
        filled: true,
        border: const OutlineInputBorder(
          borderSide: BorderSide(width: 0.0, style: BorderStyle.none),
        ),
        contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 0.0),
        // errorStyle: AppTextStyles.mulishMainColor16w600,
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return '@required field!';
        }
        return null;
      },
    );
  }
}
