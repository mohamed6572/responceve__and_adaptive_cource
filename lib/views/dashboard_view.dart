import 'package:flutter/material.dart';
import 'package:responsive_course/widgets/adaptive_layout/adaptive_layout_widget.dart';
import 'package:responsive_course/widgets/custom_drawer/custom_drawer.dart';

import '../widgets/desktop_dashboard/dashboard_desktop_layout.dart';
import '../widgets/my_card/my_card_section.dart';
import '../widgets/quick_invoice/allexpenses_and_quickinvoice_section.dart';
import '../widgets/mobile_dashboard/dashboard_mobile_layout.dart';
import '../widgets/tablet_dashboard/dashboard_tablet_layout.dart';

class DashBoardView extends StatefulWidget {
  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width<800 ? AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFFAFAFA),
        leading: IconButton(
            onPressed: () {
              scaffoldKey.currentState!.openDrawer();
            },
            icon: const Icon(Icons.menu,color: Color(0xFF4DB7F2),)),
      ):null,
backgroundColor: Color(0xffF7F9FA),
       drawer: MediaQuery.sizeOf(context).width<800 ?CustomDrawer():null,
       body: AdaptiveLayout(
         mobileLayout: (context) => DashboardMobileLayout(),
         tabletLayout: (context) => DashboardTabletLayout(),
         desktopLayout: (context) => DashboardDesktopLayout(),
       ),
    );
  }
}
