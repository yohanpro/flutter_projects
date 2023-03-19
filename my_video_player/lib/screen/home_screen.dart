import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  XFile? video;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: video != null ? renderVideo() : renderEmpty());
  }

  Widget renderVideo() {
    return Center(
      child: Text('My Video'),
    );
  }

  Widget renderEmpty() {
    return Container(
      decoration: getBoxDecoration(),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _Logo(
              onTap: onLogoTap,
            ),
            SizedBox(
              height: 30.0,
            ),
            _AppName(),
          ],
        ),
      ),
    );
  }

  void onLogoTap() async {
    final video = await ImagePicker().pickVideo(source: ImageSource.gallery);
    if (video != null) {
      this.setState(() {
        this.video = video;
      });
    }
  }
}

BoxDecoration getBoxDecoration() {
  return BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF2a4a7c), Color((0xFF000118))]));
}

class _Logo extends StatelessWidget {
  final VoidCallback onTap;

  const _Logo({required this.onTap, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap, child: Image.asset('asset/image/logo.png'));
  }
}

class _AppName extends StatelessWidget {
  const _AppName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
        color: Colors.white, fontWeight: FontWeight.w300, fontSize: 30.0);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Video'.toUpperCase(), style: textStyle),
        Text('Player'.toUpperCase(),
            style: textStyle.copyWith(fontWeight: FontWeight.w700))
      ],
    );
  }
}
