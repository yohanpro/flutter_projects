import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Timer? timer;
  PageController pageController = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 4), (timer) {
      int currentPage = pageController.page!.toInt();
      int nextPage = currentPage + 1;

      if (nextPage == 5) {
        nextPage = 0;
      }
      pageController.animateToPage(nextPage,
          duration: Duration(milliseconds: 400), curve: Curves.easeIn);
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    if (timer != null) timer!.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: List.generate(
          5,
          (index) => Image.asset(
            'asset/img/image_${index + 1}.jpeg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
