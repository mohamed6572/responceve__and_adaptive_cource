import 'package:flutter/material.dart';
import 'package:responsive_course/widgets/quick_invoice/quick_invoice.dart';

import '../all_expensess/all_expensess.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [

        AllExpensess(),
        SizedBox(height: 24,),
        QuickInvoice()
      ],
    );
  }
}
