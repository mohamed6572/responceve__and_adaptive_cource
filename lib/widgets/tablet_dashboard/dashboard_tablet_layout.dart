import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_course/widgets/custom_drawer/custom_drawer.dart';
import 'package:responsive_course/widgets/my_cards_and_transaction_history.dart';
import 'package:responsive_course/widgets/quick_invoice/allexpenses_and_quickinvoice_section.dart';

import '../income/income_section.dart';
import '../mobile_dashboard/dashboard_mobile_layout.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32,),
        Expanded(flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: DashboardMobileLayout(),
            )),
        SizedBox(width: 32,),
      ],
    );
  }
}


