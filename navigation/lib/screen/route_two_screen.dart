import 'package:flutter/material.dart';

import '../layout/main_layout.dart';

class RouteTwo extends StatelessWidget {
  const RouteTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments;
    return MainLayout(title: 'Route two', children: [
      Text('arguments : ${arguments}',
          textAlign: TextAlign.center, style: TextStyle(color: Colors.red)),
      ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/three', arguments: 999);
          },
          child: Text('Push Named'))
    ]);
  }
}
