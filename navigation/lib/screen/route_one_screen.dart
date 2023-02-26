import 'package:flutter/material.dart';
import 'package:navigation/screen/route_two_screen.dart';

import '../layout/main_layout.dart';

class RouteOne extends StatelessWidget {
  const RouteOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainLayout(title: 'Route one', children: [
      ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => RouteTwo()));
          },
          child: Text('Push'))
    ]);
  }
}
