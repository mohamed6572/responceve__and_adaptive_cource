import 'package:flutter/material.dart';

import '../income/income_section.dart';
import '../my_cards_and_transaction_history.dart';
import '../quick_invoice/allexpenses_and_quickinvoice_section.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoiceSection(), SizedBox(width: 24,),
          MyCardsAndTransactionHistory(), SizedBox(width: 24,),
          IncomeSection(),
        ],
      ),
    );
  }
}