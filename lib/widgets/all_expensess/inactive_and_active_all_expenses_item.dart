import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/all_expensess_item_model.dart';
import '../../utils/app_styles.dart';
import 'all_expensess_item_header.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({super.key, required this.itemModel});
  final AllExpensessItemModel itemModel  ;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensessItemHeader(image: itemModel.image,),
          SizedBox(height: 34,),
          FittedBox(fit: BoxFit.scaleDown,
            child: Text(
              itemModel.title,
              style: AppStyles.styleMedium16(context),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          FittedBox(fit: BoxFit.scaleDown,
            child: Text(
              itemModel.date,
              style: AppStyles.styleRegular14(context),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          FittedBox(fit: BoxFit.scaleDown,
            child: Text(
              itemModel.price,
              style: AppStyles.styleSemiBold24(context),
            ),
          ),
        ],
      ),
    );
  }
}
class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({super.key, required this.itemModel});
  final AllExpensessItemModel itemModel  ;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration:  ShapeDecoration(
        color: const Color(0xFF4DB7F2),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFF4DB7F2)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensessItemHeader(image: itemModel.image,imageBackground: Colors.white.withOpacity(0.10000000149011612),
            imageColor: Colors.white,),
          SizedBox(height: 34,),
          FittedBox(fit: BoxFit.scaleDown,
            child: Text(
              itemModel.title,
              style: AppStyles.styleMedium16(context).copyWith(
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          FittedBox(fit: BoxFit.scaleDown,
            child: Text(
              itemModel.date,
              style: AppStyles.styleRegular14(context).copyWith(
                color: const Color(0xFFFAFAFA),
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
      FittedBox(fit: BoxFit.scaleDown,
            child: Text(
              itemModel.price,
              style: AppStyles.styleSemiBold24(context).copyWith(color: Colors.white),

            ),
          ),
        ],
      ),
    );
  }
}
