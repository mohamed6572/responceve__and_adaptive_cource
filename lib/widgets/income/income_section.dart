import 'package:flutter/material.dart';
import 'package:responsive_course/widgets/all_expensess/custom_background_container.dart';
import 'package:responsive_course/widgets/income/income_header.dart';

import 'income_section_body.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(child: Column(
      children: [
IncomeHeader(),
        IncomeSectionBody()
      ],
    ));
  }
}
