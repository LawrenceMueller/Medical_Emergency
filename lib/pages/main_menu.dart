import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

import 'package:medical_emergency/pages/medical_information.dart';
import 'package:medical_emergency/pages/about.dart';
import 'package:medical_emergency/pages/support.dart';

class MainMenu extends StatefulWidget {
  createState() => MainMenuState();
}

class MainMenuState extends State<MainMenu> {
  final mainColorRed = const Color(0xffA61414);
  final mainColorWhite = const Color(0xffE3DAC9);

  bool activated = false;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: Scaffold(
      backgroundColor: mainColorWhite,
      body: Column(
        children: <Widget>[
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 75),
              child: Text(
                "Medical Emergency",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: mainColorRed,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5),
          ),
          Center(
            child: Text(
              "The app thats got your back!",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: mainColorRed,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 35),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Flexible(
                flex: 5,
                child: Text("Activate", style: TextStyle(fontSize: 30)),
              ),
              Transform.scale(
                scale: 2.0,
                child: Switch(
                  value: activated,
                  onChanged: (value) {
                    setState(() {
                      activated = value;
                      debugPrint('$activated');
                    });
                  },
                  activeColor: mainColorRed,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 35),
          ),
          ButtonTheme(
            minWidth: 300.0,
            height: 60.0,
            child: RaisedButton(
              color: mainColorRed,
              onPressed: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => MedicalInformation()));
              },
              child: const Text('Edit',
                  style: TextStyle(fontSize: 20, color: Color(0xffE3DAC9))),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
          ),
          ButtonTheme(
            minWidth: 300.0,
            height: 60.0,
            child: RaisedButton(
              color: mainColorRed,
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => About()));
              },
              child: const Text('About',
                  style: TextStyle(fontSize: 20, color: Color(0xffE3DAC9))),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
          ),
          ButtonTheme(
            minWidth: 300.0,
            height: 60.0,
            child: RaisedButton(
              color: mainColorRed,
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => Support()));
              },
              child: const Text('Support',
                  style: TextStyle(fontSize: 20, color: Color(0xffE3DAC9))),
            ),
          ),
        ],
      ),
    ));
  }
}
