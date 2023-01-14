import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:splash_screen/pages/SportPage.dart';
import 'package:splash_screen/pages/ProfilePage.dart';
import 'package:splash_screen/pages/OtomatifPage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 10, 120, 211),
        title: Text('GIBAHIN NEWS'),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Padding(padding: EdgeInsets.all(7.0)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Column(
                children: [
                  IconButton(
                    iconSize: 120.0,
                    onPressed: () {
                      Navigator.of(context).pushNamed('/SportPage');
                    },
                    icon: Icon(
                      Icons.sports_soccer,
                      color: Color.fromARGB(255, 79, 120, 255),
                    ),
                  ),
                  Text(
                    'SPORT',
                    style: TextStyle(fontSize: 22.0),
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  IconButton(
                    iconSize: 120.0,
                    onPressed: () {
                      Navigator.of(context).pushNamed('/OtomotifPage');
                    },
                    icon: Icon(
                      Icons.car_rental_outlined,
                      color: Color.fromARGB(255, 79, 135, 255),
                    ),
                  ),
                  Text(
                    'AUTOMOTIVE',
                    style: TextStyle(fontSize: 22.0),
                  )
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.all(18.0)),
            Container(
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(10.0)),
                  IconButton(
                    iconSize: 120.0,
                    onPressed: () {
                      Navigator.of(context).pushNamed('/ProfilPage');
                    },
                    icon: Icon(
                      Icons.person,
                      color: Color.fromARGB(255, 79, 126, 255),
                    ),
                  ),
                  Text(
                    'PROFILE',
                    style: TextStyle(fontSize: 22.0),
                  )
                ],
              ),
            ),
          ],
        )
      ]),
    );
  }
}
