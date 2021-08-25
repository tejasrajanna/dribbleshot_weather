import 'package:flutter/material.dart';
import 'package:dribble_1/widgets/main_layout.dart';

class Foreground extends StatelessWidget {
  const Foreground({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
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
        body: MainLayout(),
    );
  }
}