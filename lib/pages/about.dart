import 'package:flutter/material.dart';

class About extends StatelessWidget {
  final mainColorRed = const Color(0xffA61414);
  final mainColorWhite = const Color(0xffE3DAC9);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        backgroundColor: mainColorWhite,
        appBar: AppBar(
            backgroundColor: mainColorRed,
            centerTitle: true,
            title: Text('About')),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 16),
            ),
            Center(
              child: Text(
                "Medical Emergency",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
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
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50),
            ),
            Center(
              child: Text(
                "How To Use",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 15, 10, 0),
              child: Text(
                "Update the medical information using the Edit button in the main menu.",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 15, 10, 0),
              child: Text(
                "Then hit save",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 15, 10, 0),
              child: Text(
                "Now hit activate in the main menu",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 15, 10, 0),
              child: Text(
                "Now when you look at your lock screen there should be a small medical emergency icon available.",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50),
            ),
            Center(
              child: Text(
                "Why",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 15, 10, 0),
              child: Text(
                "This app was created in order to help healthcare professionals save lives.",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 20),
              child: Text(
                "If you are found unconcious or bleeding out, those trying to save your life can just"
                " pull out your phone, and from the lock screen view valuable information which could save your life.",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}