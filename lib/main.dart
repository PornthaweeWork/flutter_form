import 'package:flutter/material.dart';
import 'package:flutter_form/color/palette.dart';
import 'package:flutter_form/screens/about_us_screen.dart';
import 'package:flutter_form/screens/home_screen.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ลงทะเบียน',
      home: HomeScreen(),
      theme: ThemeData(
        primarySwatch: Palette.kToDark,
        fontFamily: 'PSL-EmpireExtra'
      ),
    );
  }
}
