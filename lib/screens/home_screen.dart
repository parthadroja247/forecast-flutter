import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 16.0, right: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Text(
                    'Forecasts',
                    style: GoogleFonts.montserratAlternates(
                        textStyle: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.w300),
                        color: Colors.white.withOpacity(0.6)),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                clipBehavior: Clip.antiAlias,
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.blueGrey,
                ),
                child: Padding(
                    padding: EdgeInsets.only(left: 8, top: 8),
                    child: Text('JUNAGADH')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
