import 'package:flutter/material.dart';

class LocationsHeader extends StatelessWidget {
  const LocationsHeader({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
                  );
  }
}