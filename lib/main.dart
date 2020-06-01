import 'package:flutter/material.dart';
import 'package:forecastflutter/constants/colors_const.dart';
import 'screens/launch_screen.dart';
import 'package:flutter/services.dart';

void main() => runApp(ForecastApp());

class ForecastApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark
        .copyWith(statusBarBrightness: Brightness.dark));
    return MaterialApp(
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: ColorsConst.appBackground),
      initialRoute: LaunchScreen.id,
      routes: {LaunchScreen.id: (context) => LaunchScreen()},
    );
  }
}
