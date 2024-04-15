import 'package:flutter/material.dart';
import 'package:responsive_course/widgets/all_expensess/custom_background_container.dart';
import 'package:responsive_course/widgets/my_card/my_card_section.dart';
import 'package:responsive_course/widgets/transaction_hestory/transaction_hestory.dart';

class MyCardsAndTransactionHistory extends StatelessWidget {
  const MyCardsAndTransactionHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      child: Column(
        children: [
          MyCardSection(),
          Divider(
            height: 40,
            color: Color(0xffF1F1F1),
          ),
          TransactionHestory()
        ],
      ),
    );
  }
}
