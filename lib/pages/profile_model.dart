import 'package:flutter/material.dart';
import 'package:splash_screen/pages/ProfilePage.dart';

abstract class ProfileModel extends State<ProfilePage> {
  String nama;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      nama = 'Shodiqul Muzaki';
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
