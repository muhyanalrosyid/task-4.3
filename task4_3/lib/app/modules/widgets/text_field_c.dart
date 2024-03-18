import 'package:flutter/material.dart';

import '../../data/app_colors.dart';

class TextFieldC extends StatelessWidget {
  final bool obscureText;
  final String hintText;
  final IconData prefixIcon;
  final TextEditingController controller;
  const TextFieldC({
    super.key,
    required this.obscureText,
    required this.hintText,
    required this.prefixIcon,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      cursorWidth: 1,
      cursorColor: AppColors.whiteColor,
      style: const TextStyle(
        color: AppColors.whiteColor,
      ),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 18),
        prefixIcon: Icon(
          prefixIcon,
          color: AppColors.greyColor,
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
            color: AppColors.greyColor, fontWeight: FontWeight.w300),
        border: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.greyColor,
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.whiteColor,
          ),
        ),
      ),
    );
  }
}
