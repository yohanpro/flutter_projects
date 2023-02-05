import 'package:flutter/cupertino.dart';
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
      backgroundColor: Colors.pink[100],
      body: SafeArea(
        bottom: false,
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [_TopPart(), _BottomPart()],
          ),
        ),
      ),
    );
  }
}

class _TopPart extends StatefulWidget {
  const _TopPart({Key? key}) : super(key: key);

  @override
  State<_TopPart> createState() => _TopPartState();
}

class _TopPartState extends State<_TopPart> {
  DateTime selectedDate =
      DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'U and I',
            style: TextStyle(
                fontSize: 80.0, fontFamily: 'parisienne', color: Colors.white),
          ),
          Column(
            children: [
              Text('우리 처음 만난 날',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'sunflower',
                      fontSize: 30.0)),
              Text(
                '${selectedDate.year}년 ${selectedDate.month}월 ${selectedDate.day}일',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'sunflower',
                    fontSize: 20.0),
              ),
            ],
          ),
          IconButton(
              iconSize: 60.0,
              color: Colors.red,
              onPressed: () {
                showCupertinoDialog(
                    context: context,
                    barrierDismissible: true,
                    builder: (BuildContext context) {
                      return Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                            height: 300.0,
                            color: Colors.white,
                            child: CupertinoDatePicker(
                              mode: CupertinoDatePickerMode.date,
                              initialDateTime: selectedDate,
                              maximumDate: DateTime.now(),
                              onDateTimeChanged: (DateTime date) {
                                setState(() {
                                  selectedDate = date;
                                });
                              },
                            )),
                      );
                    });
              },
              icon: Icon(Icons.favorite)),
          Text(
            'D+${DateTime.now().difference(selectedDate).inDays + 1}',
            style: TextStyle(
                color: Colors.white,
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'sunflower'),
          )
        ],
      ),
    );
  }
}

class _BottomPart extends StatelessWidget {
  const _BottomPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Image.asset('asset/img/middle_image.png'));
  }
}
