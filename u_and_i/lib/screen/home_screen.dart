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

class _TopPart extends StatelessWidget {
  const _TopPart({Key? key}) : super(key: key);

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
                '2022.10.30',
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
                showCupertinoDialog(context: context, builder: (BuildContext context){
                  return Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 300.0,
                      color: Colors.white,
                      child: CupertinoDatePicker(
                        mode: CupertinoDatePickerMode.date,
                        onDateTimeChanged: (DateTime date){
                          print(date);
                        },
                      )
                    ),
                  );
                });
              },
              icon: Icon(Icons.favorite)),
          Text(
            'D+1',
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
