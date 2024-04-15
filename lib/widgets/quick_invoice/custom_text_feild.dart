import 'package:flutter/material.dart';
import 'package:responsive_course/utils/app_styles.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({super.key, this.hint});
final hint;
  @override
  Widget build(BuildContext context) {
    return TextField(

      decoration: InputDecoration(
        hintStyle: AppStyles.styleRegular16(context).copyWith(  color: const Color(0xFFAAAAAA),),
        hintText: hint,
        fillColor: Color(0xFFFAFAFA),
        filled: true,
        border:buildBorder(),
        focusedBorder: buildBorder(),
        enabledBorder:buildBorder(),
      ),
    );
  }OutlineInputBorder buildBorder(){
    return  OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          
            color: Color(0xFFFAFAFA)
        )
    );
  }
}
