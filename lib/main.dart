import 'package:flutter/material.dart';
//import 'package:medical_emergency/pages/medical_information.dart';
//import 'package:medical_emergency/pages/about.dart';
//import 'package:medical_emergency/pages/splash.dart';
import 'package:medical_emergency/pages/main_menu.dart';

void main() => runApp(MedicalEmergency());

class MedicalEmergency extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: MainMenu(),
    );
  }
}