import 'package:flutter/material.dart';

import '../../utils/app_styles.dart';
import 'custom_text_feild.dart';

class TitleTextFeild extends StatelessWidget {
  const TitleTextFeild({super.key, required this.title, required this.hint});
final String title ,hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.styleMedium16(context),
        ),
        SizedBox(height: 12,),
        CustomTextFeild(hint: hint,),
      ],
    );
  }
}
