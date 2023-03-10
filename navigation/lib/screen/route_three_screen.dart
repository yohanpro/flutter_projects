import 'package:flutter/material.dart';
import 'package:navigation/screen/home_screen.dart';

import '../layout/main_layout.dart';

class RouteThree extends StatelessWidget {
  const RouteThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments;

    return MainLayout(title: 'Route three', children: [
      Text('arguments : ${arguments}'),
      ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => HomeScreen()));
          },
          child: Text('Push'))
    ]);
  }
}
