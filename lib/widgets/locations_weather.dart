import 'package:dribble_1/data/locations.dart';
import 'package:flutter/material.dart';

class LocationsWeather extends StatelessWidget {
  const LocationsWeather({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height= MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(bottom: 3),
      child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                          for (var location in locations)
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Stack(
                                alignment: AlignmentDirectional.center,
                                children: [
                                  ColorFiltered(
                                      colorFilter: ColorFilter.mode(
                                          Colors.black45, BlendMode.darken
                                          ),
                                      child: Image.network(
                                    location.imageUrl,
                                  height: height * 0.35 ,
                                    ),
                                  ),
                                  Column(
                                    children:[
                                      Text(
                                        location.text,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 19,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        location.timing,
                                      ),
                                      SizedBox(height:40),
                                      Text(
                                        location.temperature.toString() + '°',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 40,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      ),
                                      SizedBox(height:50),
                                      Text(location.weather),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                      ],
                    ),
    );
  }
}