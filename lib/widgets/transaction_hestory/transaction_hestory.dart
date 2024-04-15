import 'package:flutter/material.dart';
import 'package:responsive_course/widgets/transaction_hestory/transaction_hestory_header.dart';
import 'package:responsive_course/widgets/transaction_hestory/transction_history_list_view.dart';

class TransactionHestory extends StatelessWidget {
  const TransactionHestory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TansctionHistoryHeader(),
        SizedBox(
          height: 20,
        ),
        Text(
          '13 April 2022',
          style: TextStyle(
            color: Color(0xFFAAAAAA),
            fontSize: 16,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w500,
            height: 0,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        TransctionHistoryListView(),
      ],
    );
  }
}
