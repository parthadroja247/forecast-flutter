import 'package:flutter/material.dart';
import 'package:forecastflutter/screens/home_screen.dart';
import 'package:forecastflutter/services/location_service.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';
import 'package:geolocator/geolocator.dart';

class LaunchScreen extends StatefulWidget {
  static const String id = 'launch_screen';
  @override
  _LaunchScreenState createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  void getLocation() async {
    LocationService locationService = LocationService();
    Position location = await locationService.getCurrentLocation();
    if (location != null) {
      Future.delayed(const Duration(milliseconds: 1500), () {
        Navigator.pushNamed(context, HomeScreen.id);
      });
    }
  }

  @override
  void initState() {
    super.initState();
    getLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashView(),
    );
  }
}

class SplashView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
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
                        textStyle: TextStyle(
                            fontSize: 60, fontWeight: FontWeight.w300),
                        color: Colors.white.withOpacity(0.6)),
                  ),
                ),
              ),
            ],
          ),
        ),
        Column(
          children: [SplashGreetingText()],
        )
      ],
    );
  }
}

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
