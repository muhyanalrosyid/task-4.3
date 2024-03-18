import 'package:flutter/material.dart';

import '../../data/app_colors.dart';

class ButtonPrimary extends StatelessWidget {
  final String teks;
  final Function() onPressed;

  const ButtonPrimary({
    super.key,
    required this.teks,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(
          const Size(double.infinity, 48),
        ),
        backgroundColor: MaterialStateProperty.all(
          AppColors.primaryColor,
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        teks,
        style: const TextStyle(
          color: AppColors.bgScreenColor,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
