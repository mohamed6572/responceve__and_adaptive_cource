import 'package:flutter/material.dart';
import 'package:responsive_course/widgets/my_card/custom_dot_indecator.dart';

class DotsIndecator extends StatelessWidget {
  const DotsIndecator({super.key, required this.currentPageIndex});

  final int currentPageIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(3, (index) => Padding(
        padding: const EdgeInsets.only(right: 6.0),
        child: CustomDotIndecator(isActive: index == currentPageIndex),
      )),
    );
  }
}
