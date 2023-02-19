import 'package:flutter/material.dart';
import 'package:random_number_gen/constants/color.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  double maxNumber = 10000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PRIMARY_COLOR,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _Body(maxNumber: maxNumber),
              _Footer(
                maxNumber: maxNumber,
                onSliderChanged: onSliderChanged,
                onPressed: onButtonPressed,
              )
            ],
          ),
        ),
      ),
    );
  }

  void onSliderChanged(double val) {
    setState(() {
      maxNumber = val;
    });
  }

  void onButtonPressed() {
    Navigator.of(context).pop(maxNumber.toInt());
  }
}

class _Body extends StatelessWidget {
  final double maxNumber;

  const _Body({Key? key, required this.maxNumber}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Row(
      children: maxNumber
          .toInt()
          .toString()
          .split('')
          .map((e) => Image.asset(
                'asset/img/$e.png',
                width: 50.0,
                height: 70.0,
              ))
          .toList(),
    ));
  }
}

class _Footer extends StatelessWidget {
  final double maxNumber;
  final ValueChanged<double>? onSliderChanged;
  final VoidCallback? onPressed;

  const _Footer(
      {Key? key,
      required this.maxNumber,
      required this.onSliderChanged,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Slider(
            value: maxNumber,
            min: 1000,
            max: 10000,
            onChanged: onSliderChanged),
        ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: RED_COLOR,
            ),
            child: Text('저장!'))
      ],
    );
  }
}
