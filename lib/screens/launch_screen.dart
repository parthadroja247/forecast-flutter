import 'package:flutter/material.dart';
import 'package:forecastflutter/services/location_service.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:location/location.dart';
import 'package:shimmer/shimmer.dart';

class LaunchScreen extends StatelessWidget {
  static const String id = 'launch_screen';

  void getLocation(BuildContext context) async {
    LocationData location = await LocationService().getCurrentLocation();
    if (location != null) {
      // Go to home
      print(location.latitude);
      print(location.longitude);
    } else {
      // Error fetching location
    }
  }

  @override
  Widget build(BuildContext context) {
    getLocation(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(),
          ),
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
          Expanded(
            child: Container(),
          ),
          Row(
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
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
