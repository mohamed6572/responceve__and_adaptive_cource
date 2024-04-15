import 'package:flutter/material.dart';
import 'package:responsive_course/widgets/quick_invoice/latest_transaction_list_view.dart';

import '../../utils/app_styles.dart';
class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 16,
        ),
        LatestTransactionListView()
      ],
    );
  }
}
