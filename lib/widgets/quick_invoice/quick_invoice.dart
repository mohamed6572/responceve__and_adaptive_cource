import 'package:flutter/material.dart';
import 'package:responsive_course/widgets/all_expensess/custom_background_container.dart';
import 'package:responsive_course/widgets/quick_invoice/latest_transaction.dart';
import 'package:responsive_course/widgets/quick_invoice/quick_invoce_form.dart';
import 'package:responsive_course/widgets/quick_invoice/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
        child: Column(
      children: [
        QuickInvoiceHeader(),
        LatestTransaction(),
        Divider(
          height: 48,color: Color(0xffF1F1F1),
        ),
        QuickInvoceForm()

      ],
    ));
  }
}
