import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    final height= MediaQuery.of(context).size.height;
    final width= MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Positioned(
          bottom: height/2.5,
          child: Image.network(
            'https://i.ibb.co/Y2CNM8V/new-york.jpg',
            height: height,
          ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: height/2.5,
              width: width,
              color: Color(0xFF2D2C35),
            ),
          ),
          Foreground()
      ],
    );
  }
}

class Foreground extends StatelessWidget {
  const Foreground({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height= MediaQuery.of(context).size.height;
    var inputBorder = OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.all(
                          Radius.circular(30.0),
                          ), 
                          );
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent ,
        iconTheme: IconThemeData(color: Colors.white),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://i.ibb.co/Z1fYsws/profile-image.jpg',
                ),
                backgroundColor: Colors.black26 ,),
              onPressed: () {},
            ),
          ],
          ),
          body: Padding(
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'My Locations',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      OutlinedButton(onPressed: () {},
                          child: Icon(Icons.more_horiz),
                      style: OutlinedButton.styleFrom(
                        primary: Colors.white,
                        side: BorderSide(
                          width: 1,
                        color: Colors.white,
                        ),
                        shape: CircleBorder(),
                      ),
                      ),
                    ],
                  ),
                  SizedBox(height:30),
                  Row(
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
                                        Colors.black45, BlendMode.darken),
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
                                Image.network(
                                  location.imageUrl,
                                height: height * 0.35 ,
                                ),
                              ],
                            ),
                          ),
                    ],
                  )
                ],
              ),
            ),
          ),
    );
  }
}

class Location{
  final String text;
  final String timing;
  final int temperature;
  final String weather;
  final String imageUrl;

  Location({
    required this.text,
    required this.timing,
    required this.temperature,
    required this.weather,
    required this.imageUrl,
});
}

final locations = [
  Location(
    text: 'New York',
    timing: '10:44 am',
    temperature: 15,
    weather: 'Cloudy',
    imageUrl: 'https://i.ibb.co/df35Y8Q/2.png',
  ),
  Location(
    text: 'San Francisco',
    timing: '7:44 am',
    temperature: 6,
    weather: 'Raining',
    imageUrl: 'https://i.ibb.co/7WyTr6q/3.png',
  ),
];
