import 'package:flutter/material.dart';

class MedicalInformation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MedicalInformation();
  }
}

class _MedicalInformation extends State<MedicalInformation> {
  final formKey = GlobalKey<FormState>();

  final mainColorRed = const Color(0xffA61414);
  final mainColorWhite = const Color(0xffE3DAC9);

  final TextEditingController controller = new TextEditingController();

  String name;
  String dropdownValue = 'O+';
  String allergies;
  String medications;
  String conditions;
  String disabilitiesDisorders;
  String substanceAbuse;
  String emergencyName;
  String emergencyNumber;
  String emergencyRelation;

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
                  controller: controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Please Type Name Here',
                  ),
                  onChanged: (String input){
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
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Please Type List of Allergies',
                  ),
                  onChanged: (String input){
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
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Please Type List of Medications',
                  ),
                  onChanged: (String input){
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
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Current Conditions',
                  ),
                  onChanged: (String input){
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
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Disabilites / Disorders',
                  ),
                  onChanged: (String input){
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
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Alchohol, Cocain, Adderall, etc..',
                  ),
                  onChanged: (String input){
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
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Please Type Name Here',
                  ),
                  onChanged: (String input){
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
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Please Type Number Here',
                  ),
                  onChanged: (String input){
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
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Please Type Relation Status Here',
                  ),
                  onChanged: (String input){
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
              debugPrint('$name');
              debugPrint('$dropdownValue');
              debugPrint('$allergies');
              debugPrint('$medications');
              debugPrint('$conditions');
              debugPrint('$disabilitiesDisorders');
              debugPrint('$emergencyName');
              debugPrint('$emergencyNumber');
              debugPrint('$emergencyRelation');
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
