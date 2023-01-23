import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final Color color;

  HomeScreen({
    required this.color,
    Key? key,
  }) : super(key: key) {
    print('HomeScreen constructor');
  }

  @override
  State<HomeScreen> createState() {
    print('create State 실행');
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  int number = 0;

  @override
  void initState() {
    // TODO: implement initState
    print('initState 실행');
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    print('didChangeDependencies 실행');
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    print('dispose 실행');
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant HomeScreen oldWidget) {
    // TODO: implement didUpdateWidget
    print('didUpdateWidget 실행');
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    print('deactivate 실행');
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    print('build 실행');
    return GestureDetector(
      onTap: () {
        print('Tab!');
        setState(() {
          number ++;
        });
      },
      child: Container(
        width: 50.0,
        height: 50.0,
        color: widget.color,
        child: Center(child: Text(number.toString())),
      ),
    );
  }
}
