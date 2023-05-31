import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_fonts.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    Key? key,
    required this.title,
    this.padding,
    this.backgroundColor,
    this.onPressed,
  }) : super(key: key);
  final String? title;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onPressed;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
// Custom widget for TextButton with custom styling
    return TextButton(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.purpleBlue,
        textStyle: AppFonts.smallBody,
        backgroundColor: backgroundColor ?? Colors.transparent,
        // Add padding to the button based on the parameter passed in or default

        padding:
            padding ?? const EdgeInsets.symmetric(horizontal: 20, vertical: 10),

        shape: RoundedRectangleBorder(
          side: const BorderSide(color: AppColors.purpleBlue),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        "$title", // title is a required parameter
        textAlign: TextAlign.start, // Center the text
      ),
    );
  }
}
