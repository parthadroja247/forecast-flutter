import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class LaunchScreen extends StatelessWidget {
  static const String id = 'launch_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image(
              image: AssetImage('images/Cloud.png'),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Center(
            child: TypewriterAnimatedTextKit(
              text: ['Forecasts'],
              speed: Duration(milliseconds: 300),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
              totalRepeatCount: 1,
              textStyle: TextStyle(fontFamily: 'Noteworthy', fontSize: 60),
              alignment: AlignmentDirectional.topStart,
            ),
          ),
        ],
      ),
    );
  }
}
