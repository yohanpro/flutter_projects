import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
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
