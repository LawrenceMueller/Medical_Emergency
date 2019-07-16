import 'package:flutter/material.dart';

import 'package:medical_emergency/pages/main_menu.dart';

class MedicalInformation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MedicalInformation();
  }
}

class _MedicalInformation extends State<MedicalInformation> {
  final mainColorRed = const Color(0xffA61414);
  final mainColorWhite = const Color(0xffE3DAC9);
  String dropdownValue = 'O+';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: mainColorWhite,
        appBar: AppBar(
            backgroundColor: mainColorRed,
            centerTitle: true,
            title: Text('Medical Emergency Information')),
        body: ListView(children: <Widget>[
          CustomPadding(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Flexible(
                flex: 5,
                child: Text("Name", style: TextStyle(fontSize: 18)),
              ),
              Spacer(),
              Flexible(
                flex: 11,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Please Type Name Here',
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 15),
          ),
          Row(
            children: [
              Spacer(),
              Flexible(
                flex: 5,
                child: Text("Blood Type", style: TextStyle(fontSize: 18)),
              ),
              Spacer(),
              Flexible(
                flex: 15,
                child: DropdownButton<String>(
                  value: dropdownValue,
                  onChanged: (String newValue) {
                    setState(() {
                      dropdownValue = newValue;
                    });
                  },
                  items: <String>[
                    'AB-',
                    'B-',
                    'AB+',
                    'A-',
                    'O-',
                    'B+',
                    'A+',
                    'O+'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
              Spacer(),
            ],
          ),
          CustomPadding(),
          Row(
            children: [
              Spacer(),
              Flexible(
                flex: 4,
                child: Text("Known Allergies", style: TextStyle(fontSize: 18)),
              ),
              Spacer(),
              Flexible(
                flex: 11,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Please Type List of Allergies',
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
          CustomPadding(),
          Row(
            children: [
              Spacer(),
              Flexible(
                flex: 4,
                child:
                    Text("Current Medication", style: TextStyle(fontSize: 18)),
              ),
              Spacer(),
              Flexible(
                flex: 11,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Please Type List of Medications',
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
          CustomPadding(),
          Row(
            children: [
              Spacer(),
              Flexible(
                flex: 4,
                child:
                    Text("Medical Conditions", style: TextStyle(fontSize: 18)),
              ),
              Spacer(),
              Flexible(
                flex: 11,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Current Conditions',
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
          CustomPadding(),
          Row(
            children: [
              Spacer(),
              Flexible(
                flex: 4,
                child: Text("Disabilites Disorders",
                    style: TextStyle(fontSize: 18)),
              ),
              Spacer(),
              Flexible(
                flex: 11,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Disabilites / Disorders',
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
          CustomPadding(),
          Row(
            children: [
              Spacer(),
              Flexible(
                flex: 4,
                child: Text("Substance Abuse", style: TextStyle(fontSize: 18)),
              ),
              Spacer(),
              Flexible(
                flex: 11,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Alchohol, Cocain, Adderall, etc..',
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
          CustomPadding(),
          Padding(
            padding: EdgeInsets.only(top: 5),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                flex: 4,
                child:
                    Text("Emergency Contact", style: TextStyle(fontSize: 18)),
              ),
            ],
          ),
          CustomPadding(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Flexible(
                flex: 4,
                child: Text("Name    ", style: TextStyle(fontSize: 18)),
              ),
              Spacer(),
              Flexible(
                flex: 11,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Please Type Name Here',
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
          CustomPadding(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Flexible(
                flex: 4,
                child: Text("Number", style: TextStyle(fontSize: 18)),
              ),
              Spacer(),
              Flexible(
                flex: 11,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Please Type Number Here',
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
          CustomPadding(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Flexible(
                flex: 4,
                child: Text("Relation", style: TextStyle(fontSize: 18)),
              ),
              Spacer(),
              Flexible(
                flex: 11,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Please Type Relation Status Here',
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
          CustomPadding(),
          RaisedButton(
            padding: EdgeInsets.all(15),
            color: mainColorRed,
            onPressed: () {Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => MainMenu()));},
            child: const Text('Save',
                style: TextStyle(fontSize: 20, color: Colors.white)),
          ),
        ]),
      ),
    );
  }
}

class CustomPadding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 15),
    );
  }
}