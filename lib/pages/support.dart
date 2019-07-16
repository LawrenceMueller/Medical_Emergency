import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Support extends StatelessWidget {
  final mainColorRed = const Color(0xffA61414);
  final mainColorWhite = const Color(0xffE3DAC9);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        backgroundColor: mainColorWhite,
        body: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            Center(
              child: Text(
                "Want To Show Support",
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
                "You know you do",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15, 25, 15, 0),
              child: Text(
                "If you believe in this app's goals",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15, 25, 15, 0),
              child: Text(
                "If you enjoy the fact that this app is free and free of ads",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15, 25, 15, 0),
              child: Text(
                "If this app has helped save yours or someone you knows life",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15, 25, 15, 0),
              child: Text(
                "If you just respect the fact that making apps is not easy",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 40),
            ),
            Center(
              child: Text(
                "Then Hit The Donate Button",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 40),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ButtonTheme(
                  minWidth: 300.0,
                  height: 60.0,
                  child: RaisedButton(
                    color: mainColorRed,
                    onPressed: () {},
                    child: const Text('Donate',
                        style:
                            TextStyle(fontSize: 20, color: Color(0xffE3DAC9))),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
