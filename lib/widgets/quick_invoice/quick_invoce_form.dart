import 'package:flutter/material.dart';

import 'package:responsive_course/widgets/quick_invoice/custon_button.dart';
import 'package:responsive_course/widgets/quick_invoice/title_text_feild.dart';

class QuickInvoceForm extends StatelessWidget {
  const QuickInvoceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextFeild(
                title: 'Customer name',
                hint: 'Type customer name',
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextFeild(
                title: 'Customer Email',
                hint: 'Type customer email',
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: TitleTextFeild(
                title: 'Item name',
                hint: 'Type customer name',
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextFeild(
                title: 'Item mount',
                hint: 'USD',
              ),
            ),
          ],
        ),
        SizedBox(height: 24,),
        Row(
          children: [
            Expanded(
                child: CustonButton(
              text: 'Add more details',
                  textColor:  Color(0xFF4DB7F2),
                  backGroundColor: Colors.transparent,
            )),
            SizedBox(width: 24,),
            Expanded(
                child: CustonButton(
              text: 'Send Money',
            )),
          ],
        ),
      ],
    );
  }
}
