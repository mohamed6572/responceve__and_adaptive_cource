import 'package:flutter/material.dart';
import 'package:responsive_course/utils/app_styles.dart';
import 'package:responsive_course/widgets/all_expensess/range_options.dart';

class AllExpensessHeader extends StatelessWidget {
  const AllExpensessHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('All Expenses',style: AppStyles.styleSemiBold20(context),),
        Expanded(child: SizedBox()),
        RangeOptions()

      ],
    );
  }
}
