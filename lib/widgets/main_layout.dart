import 'package:dribble_1/widgets/locations_header.dart';
import 'package:dribble_1/widgets/locations_weather.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var inputBorder = OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.all(
                          Radius.circular(30.0),
                          ), 
                          );

    return Padding( //SearchBar
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: DefaultTextStyle(
              style: GoogleFonts.raleway(color:Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 50,),
                  Text(
                    'Hello Siri',
                    style: TextStyle(fontSize: 30),
                  ),
                  SizedBox(height: 5,),
                  Text(
                    'Check the weather by city',
                    style: TextStyle(
                      fontSize:15,
                      fontWeight: FontWeight.w700,
                      ),
                  ),
                  SizedBox(height: 35,),
                  TextField(
                    decoration: InputDecoration(
                      border: inputBorder,
                      enabledBorder: inputBorder,
                      focusedBorder: inputBorder,
                      hintText: 'Search City',
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                      suffixIcon: Icon(
                          Icons.search, color: Colors.white
                      ),
                    ),
                  ),
                  SizedBox(height: 110),
                  Expanded(child: LocationsHeader()),
                  SizedBox(height: 20),
                  LocationsWeather(),
                ],
              ),
            ),
          );
  }
}