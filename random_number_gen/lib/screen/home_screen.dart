import 'package:flutter/material.dart';
import 'package:random_number_gen/constants/color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PRIMARY_COLOR,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '랜덤 숫자생성기',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w700),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.settings,
                        color: RED_COLOR,
                      ))
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
                  // elevateButton to set color
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: RED_COLOR,
                      ),
                      onPressed: () {},
                      child: const Text('생성기')))
            ],
          ),
        ),
      ),
    );
  }
}
