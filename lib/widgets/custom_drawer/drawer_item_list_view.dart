import 'package:flutter/material.dart';

import '../../models/drawer_item_model.dart';
import '../../utils/app_images.dart';
import 'drawer_item.dart';

class DrawerItemListView extends StatefulWidget {
   DrawerItemListView({super.key});

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  final List<DrawerItemModel> items = [
    const DrawerItemModel(title: 'Dashboard', image: Assets.imagesDashboard),
    const DrawerItemModel(
        title: 'My Transaction', image: Assets.imagesMyTransctions),
    const DrawerItemModel(title: 'Statistics', image: Assets.imagesStatistics),
    const DrawerItemModel(
        title: 'Wallet Account', image: Assets.imagesWalletAccount),
    const DrawerItemModel(
        title: 'My Investments', image: Assets.imagesMyInvestments),
  ];
int activeIndex=0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,


      itemBuilder: (context, index) {

        return GestureDetector(
          onTap: (){
                if(activeIndex !=index) {
              setState(() {
                activeIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: DrawerItem(drawerItemModel: items[index], isActive: activeIndex==index,),
          ),
        );
      },);
  }
}
