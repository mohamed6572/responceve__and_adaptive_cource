import 'package:flutter/material.dart';

import '../../utils/app_styles.dart';

class CustonButton extends StatelessWidget {
  CustonButton(
      {super.key, this.textColor, this.backGroundColor, required this.text});

  final Color? textColor, backGroundColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          elevation: 0.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        backgroundColor: backGroundColor ??const Color(0xFF4DB7F2),
        ),
        child: Text(
          text,
          style: AppStyles.styleSemiBold18(context).copyWith(
            color: textColor,
          ),
        ),
      ),
    );
  }
}
