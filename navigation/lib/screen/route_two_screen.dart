import 'package:flutter/material.dart';
import 'package:navigation/screen/route_three_screen.dart';

import '../layout/main_layout.dart';

class RouteTwo extends StatelessWidget {
  const RouteTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainLayout(title: 'Route two', children: [
      ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => RouteThree()));
          },
          child: Text('Push'))
    ]);
  }
}
