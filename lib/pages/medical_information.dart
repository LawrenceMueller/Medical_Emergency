import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:medical_emergency/pages/main_menu.dart';
import 'dart:convert';
import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:simple_permissions/simple_permissions.dart';

class MedicalInformation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MedicalInformation();
  }
}

class _MedicalInformation extends State<MedicalInformation> {
  final _nameController = TextEditingController();
  final _allergiesController = TextEditingController();
  final _medicationsController = TextEditingController();
  final _conditionsController = TextEditingController();
  final _disabilitiesDisordersController = TextEditingController();
  final _substanceAbuseController = TextEditingController();
  final _emergencyNameController = TextEditingController();
  final _emergencyNumberController = TextEditingController();
  final _emergencyRelationController = TextEditingController();

  String name = "test";
  String dropdownValue = "O+";
  String allergies = "test";
  String medications = "test";
  String conditions = "test";
  String disabilitiesDisorders = "test";
  String substanceAbuse = "test";
  String emergencyName = "test";
  String emergencyNumber = "test";
  String emergencyRelation = "test";

  var parsedJson;

  final mainColorRed = const Color(0xffA61414);
  final mainColorWhite = const Color(0xffE3DAC9);

  Future<bool> saveDataPreferences(String data) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("data", data);

    return prefs.commit();
  }

  Future<String> getDataPreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String data = prefs.getString("data");

    return data;
  }

  @override
  void initState() {
    super.initState();
    getDataPreference().then(initialDataFromStorage);
  }

  initialDataFromStorage(String data) {
    parsedJson = json.decode(data);

    setState(() {
      _nameController.text = parsedJson['name'];
      dropdownValue = parsedJson['blood'];
      _allergiesController.text = parsedJson['allergies'];
      _medicationsController.text = parsedJson['medications'];
      _conditionsController.text = parsedJson['conditions'];
      _disabilitiesDisordersController.text =
          parsedJson['disabilitiesDisorders'];
      _substanceAbuseController.text = parsedJson['substanceAbuse'];
      _emergencyNameController.text = parsedJson['emergencyName'];
      _emergencyNumberController.text = parsedJson['emergencyNumber'];
      _emergencyRelationController.text = parsedJson['emergencyRelation'];
    });

    name = parsedJson['name'];
    dropdownValue = parsedJson['blood'];
    allergies = parsedJson['allergies'];
    medications = parsedJson['medications'];
    disabilitiesDisorders = parsedJson['disabilitiesDisorders'];
    substanceAbuse = parsedJson['substanceAbuse'];
    emergencyName = parsedJson['emergencyName'];
    emergencyNumber = parsedJson['emergencyNumber'];
    emergencyRelation = parsedJson['emergencyRelation'];
  }

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
                  controller: _nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Please Type Name Here',
                  ),
                  onChanged: (String input) {
                    setState(() {
                      name = input;
                    });
                  },
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
                  controller: _allergiesController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Please Type List of Allergies',
                  ),
                  onChanged: (String input) {
                    setState(() {
                      allergies = input;
                    });
                  },
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
                  controller: _medicationsController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Please Type List of Medications',
                  ),
                  onChanged: (String input) {
                    setState(() {
                      medications = input;
                    });
                  },
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
                  controller: _conditionsController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Current Conditions',
                  ),
                  onChanged: (String input) {
                    setState(() {
                      conditions = input;
                    });
                  },
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
                  controller: _disabilitiesDisordersController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Disabilites / Disorders',
                  ),
                  onChanged: (String input) {
                    setState(() {
                      disabilitiesDisorders = input;
                    });
                  },
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
                  controller: _substanceAbuseController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Alchohol, Cocain, Adderall, etc..',
                  ),
                  onChanged: (String input) {
                    setState(() {
                      substanceAbuse = input;
                    });
                  },
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
                  controller: _emergencyNameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Please Type Name Here',
                  ),
                  onChanged: (String input) {
                    setState(() {
                      emergencyName = input;
                    });
                  },
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
                  controller: _emergencyNumberController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Please Type Number Here',
                  ),
                  onChanged: (String input) {
                    setState(() {
                      emergencyNumber = input;
                    });
                  },
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
                  controller: _emergencyRelationController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Please Type Relation Status Here',
                  ),
                  onChanged: (String input) {
                    setState(() {
                      emergencyRelation = input;
                    });
                  },
                ),
              ),
              Spacer(),
            ],
          ),
          CustomPadding(),
          RaisedButton(
            padding: EdgeInsets.all(15),
            color: mainColorRed,
            onPressed: () {
              var jsonString =
                  '{"name" : "$name", "blood" : "$dropdownValue", "allergies" : "$allergies", "medications" : "$medications", "conditions" : "$conditions", "disabilitiesDisorders" : "$disabilitiesDisorders", "substanceAbuse" : "$substanceAbuse", "emergencyName" : "$emergencyName", "emergencyNumber" : "$emergencyNumber", "emergencyRelation" : "$emergencyRelation"}';
              saveDataPreferences(jsonString);
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => MainMenu()));
            },
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
