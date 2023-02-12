import 'dart:math';

import 'package:flutter/material.dart';
import 'package:random_number_gen/constants/color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<int> randomNumbers = [123, 456, 789];

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
                children: randomNumbers
                    .asMap()
                    .entries
                    .map((x) => Padding(
                          padding:
                              EdgeInsets.only(bottom: x.key == 2 ? 0 : 16.0),
                          child: Row(
                            children: x.value
                                .toString()
                                .split('')
                                .map((y) => Image.asset(
                                      'asset/img/$y.png',
                                      height: 70.0,
                                      width: 50.0,
                                    ))
                                .toList(),
                          ),
                        ))
                    .toList(),
              )),
              SizedBox(
                  width: double.infinity,
                  // elevateButton to set color
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: RED_COLOR,
                      ),
                      onPressed: () {
                        final rand = Random();
                        final Set<int> newNumbers = {};

                        while (newNumbers.length != 3) {
                          final number = rand.nextInt(1000);
                          newNumbers.add(number);
                        }

                        setState(() {
                          randomNumbers = newNumbers.toList();
                        });
                      },
                      child: const Text('생성기')))
            ],
          ),
        ),
      ),
    );
  }
}
