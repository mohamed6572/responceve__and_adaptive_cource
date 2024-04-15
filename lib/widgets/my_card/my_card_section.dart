import 'package:flutter/material.dart';
import 'package:responsive_course/widgets/my_card/dots_indecator.dart';
import 'package:responsive_course/widgets/my_card/my_card_page_view.dart';

import '../../utils/app_styles.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({Key? key}) : super(key: key);

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int currentPageIndex = 0;

  @override
  void initState() {
    pageController = PageController();

    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState(() {});
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 420,
          child: Text(
            'My card',
            style: AppStyles.styleSemiBold20(context),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
MyCardPageView( pageController: pageController,),


        const SizedBox(
          height: 20,
        ),
        DotsIndecator(  currentPageIndex: currentPageIndex,)

      ],
    );
  }
}
