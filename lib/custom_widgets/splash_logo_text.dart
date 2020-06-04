import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';

class SplashLogoText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image(
              image: AssetImage('images/launch_screen/app_logo.png'),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Center(
            child: Shimmer.fromColors(
              baseColor: Colors.white.withOpacity(0.6),
              highlightColor: Colors.white,
              child: Text(
                'Forecasts',
                style: GoogleFonts.montserratAlternates(
                    textStyle:
                        TextStyle(fontSize: 60, fontWeight: FontWeight.w300),
                    color: Colors.white.withOpacity(0.6)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
