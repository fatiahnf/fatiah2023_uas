import 'package:flutter/material.dart';
import 'package:splash_screen/pages/HomePage.dart';
import 'package:splash_screen/pages/SportPage.dart';
import 'package:splash_screen/pages/OtomatifPage.dart';
import 'package:splash_screen/pages/ProfilePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => HomePage(),
        '/SportPage': (context) => SportPages(),
        '/OtomotifPage': (context) => OtomotifPage(),
        '/ProfilPage': (context) => ProfilePage(),
      },
    );
  }
}
