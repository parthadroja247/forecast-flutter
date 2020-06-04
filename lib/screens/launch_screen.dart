import 'package:flutter/material.dart';
import 'package:forecastflutter/screens/home_screen.dart';
import 'package:forecastflutter/services/location_service.dart';
import 'package:geolocator/geolocator.dart';
import 'package:forecastflutter/custom_widgets/splash_greeting_text.dart';
import 'package:forecastflutter/custom_widgets/splash_logo_text.dart';

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
        SplashLogoText(),
        Column(
          children: [SplashGreetingText()],
        )
      ],
    );
  }
}
