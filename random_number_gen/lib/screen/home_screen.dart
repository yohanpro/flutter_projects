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
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('랜덤 숫자생성기'),
                IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
              ],
            ),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('랜덤숫자'),
                Text('랜덤숫자'),
                Text('랜덤숫자'),
              ],
            )),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () {}, child: Text('생성기')))
          ],
        ),
      ),
    );
  }
}
