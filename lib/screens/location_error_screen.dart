import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LocationErrorScreen extends StatelessWidget {
  static const kErrorTitle = 'OOPS :(';
  static const kErrorDescription =
      'Sorry we are unable to get your current location.\nMake sure you have gps enabled & allowed app to use location services.';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.fromLTRB(24, 48, 24, 48),
          child: Column(
            children: [
              Image(
                image: AssetImage('images/home_location.png'),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                kErrorTitle,
                style: GoogleFonts.montserratAlternates(
                    textStyle: TextStyle(
                        color: Color(0xff162840),
                        fontSize: 36.0,
                        fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                kErrorDescription,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xff787878),
                    fontSize: 17.0,
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 40,
              ),
              ButtonTheme(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24.0)),
                minWidth: double.infinity,
                height: 48,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  elevation: 0,
                  color: Color(0xff162840),
                  child: Text(
                    'Continue anyway',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
