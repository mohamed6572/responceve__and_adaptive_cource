import 'package:flutter/material.dart';
import 'package:responsive_course/models/all_expensess_item_model.dart';
import 'inactive_and_active_all_expenses_item.dart';

class AllExpensessItem extends StatelessWidget {
   AllExpensessItem({super.key, required this.itemModel, required this.isSelected});
  final AllExpensessItemModel itemModel  ;
 final  bool isSelected ;
  @override
  Widget build(BuildContext context) {
    return isSelected? ActiveAllExpensesItem(itemModel: itemModel): InActiveAllExpensesItem(itemModel: itemModel,);
  }
}
