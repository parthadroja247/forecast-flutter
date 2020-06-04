import 'package:flutter/material.dart';

class SplashGreetingText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Made with ❤️ ',
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w300,
                color: Colors.white.withOpacity(0.5)),
          ),
          Text(
            'Parth Adroja',
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.white.withOpacity(0.5)),
          ),
        ],
      ),
    );
  }
}
