import 'package:flutter/material.dart';
import 'package:medical_emergency/pages/splash.dart';

void main() => runApp(MedicalEmergency());

class MedicalEmergency extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Splash(),
    );
  }
}