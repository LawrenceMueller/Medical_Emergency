import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Splash extends StatelessWidget {
  final mainColorRed = Color(0xffA61414);
  final mainColorWhite = Color(0xffE3DAC9);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: Scaffold(
      backgroundColor: mainColorRed,
      body: Column(
        children: <Widget>[
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 100),
              child: Text(
                "Medical Emergency",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: mainColorWhite,
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
                color: mainColorWhite,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 50),
          ),
          SplashImage(),
          Padding(
            padding: EdgeInsets.only(top: 50),
          ),
          RaisedButton(
            padding: EdgeInsets.fromLTRB(50, 15, 50, 15),
            color: mainColorWhite,
            onPressed: () {},
            child: const Text('Save',
                style: TextStyle(fontSize: 20, color: Color(0xffA61414))),
          ),
        ],
      ),
    ));
  }
}

class SplashImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var assetsImage = AssetImage("assets/ambulance.png");
    var image = Image(
      image: assetsImage,
      width: 200.0,
      height: 200.0,
    );
    return Container(child: image);
  }
}
