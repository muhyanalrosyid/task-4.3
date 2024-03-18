import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import '../../data/app_colors.dart';

class TileMenuProfile extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function() onTap;
  final Color color;

  const TileMenuProfile({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
    this.color = AppColors.whiteColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8.0),
      splashColor: AppColors.bgCardColor.withOpacity(0.8),
      overlayColor:
          MaterialStateProperty.all(AppColors.bgCardColor.withOpacity(0.8)),
      onTap: onTap,
      child: Ink(
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: AppColors.bgCardColor,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Icon(
                icon,
                color: color,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  color: color,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Icon(
              IconlyLight.arrowRight2,
              color: color,
            ),
          ],
        ),
      ),
    );
  }
}
