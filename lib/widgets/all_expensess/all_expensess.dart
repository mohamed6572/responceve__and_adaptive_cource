import 'package:flutter/material.dart';
import 'package:responsive_course/widgets/all_expensess/custom_background_container.dart';

import 'all_expensess_header.dart';
import 'all_expensess_items_list_view.dart';

class AllExpensess extends StatelessWidget {
  const AllExpensess({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(

      child: Column(
      children: [
        AllExpensessHeader(),
        SizedBox(
          height: 16,
        ),
        AllExpensessItemsListView()
      ],
    ),);
  }
}
