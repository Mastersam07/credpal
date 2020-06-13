import 'package:credpal/ui/edit_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:credpal/utils/styles.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:date_field/date_field.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  DateTime selectedDate;
  String sel1;
  String level;
  String nation;
  String status;
  String marital;
  String relate;
  PageController controller = PageController();

  var currentPageValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Themes.background,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Themes.background,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Themes.pureblack,
        ),
        actions: <Widget>[
          Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Text(
                "Step 1 of 5",
                style: TextStyle(
                  color: Themes.lightblack,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
            child: StepProgressIndicator(
              totalSteps: 5,
              currentStep: 1,
              size: 3,
              selectedColor: Themes.blue,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
            child: Text(
              'Complete Profile',
              style: TextStyle(
                  color: Themes.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Tell us even more about yourself and ensure that all details provided herein are valid and up to date.',
              style: TextStyle(
                color: Themes.pureblack,
              ),
            ),
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 20.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Date of Birth",
                                  style: TextStyle(color: Colors.blueAccent),
                                ),
                                DateField(
                                  selectedDate: selectedDate,
                                  onDateSelected: (DateTime date) {
                                    setState(() {
                                      selectedDate = date;
                                    });
                                  },
                                  lastDate: DateTime(2020),
                                ),
                              ],
                            )),
                      ),
                      Expanded(
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Gender",
                                  style: TextStyle(color: Colors.blueAccent),
                                ),
                                DropdownButton<String>(
                                  hint: Text("Select"),
                                  value: sel1,
                                  underline: SizedBox(),
                                  items: ["Male", "Female"].map((value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(
                                        value,
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    );
                                  }).toList(),
                                  isExpanded: true,
                                  onChanged: (value) {
                                    setState(() {
                                      sel1 = value;
                                    });
                                    FocusScope.of(context).unfocus();
                                  },
                                ),
                                Divider(
                                  color: Colors.black38,
                                )
                              ],
                            )),
                      ),
                    ],
                  ),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Residential Address",
                            style: TextStyle(color: Colors.blueAccent),
                          ),
                          TextField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(
                                  top: 20), // add padding to adjust text
                              isDense: true,
                              hintText: "Address",
                              prefixIcon: Icon(Icons.home),
                            ),
                          ),
                        ],
                      )),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Education Level",
                                  style: TextStyle(color: Colors.blueAccent),
                                ),
                                DropdownButton<String>(
                                  hint: Text("Select"),
                                  value: level,
                                  underline: SizedBox(),
                                  items: ["Graduate", "School Cert"].map((value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(
                                        value,
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    );
                                  }).toList(),
                                  isExpanded: true,
                                  onChanged: (value) {
                                    setState(() {
                                      level = value;
                                    });
                                    FocusScope.of(context).unfocus();
                                  },
                                ),
                                Divider(
                                  color: Colors.black38,
                                )
                              ],
                            )),
                      ),
                      Expanded(
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Nationality",
                                  style: TextStyle(color: Colors.blueAccent),
                                ),
                                DropdownButton<String>(
                                  hint: Text("Select"),
                                  value: nation,
                                  underline: SizedBox(),
                                  items: ["Nigeria", "Non-Nigeria"].map((value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(
                                        value,
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    );
                                  }).toList(),
                                  isExpanded: true,
                                  onChanged: (value) {
                                    setState(() {
                                      nation = value;
                                    });
                                    FocusScope.of(context).unfocus();
                                  },
                                ),
                                Divider(
                                  color: Colors.black38,
                                )
                              ],
                            )),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Employment Status",
                                  style: TextStyle(color: Colors.blueAccent),
                                ),
                                DropdownButton<String>(
                                  hint: Text("Select"),
                                  value: status,
                                  underline: SizedBox(),
                                  items: ["Employed", "Umemployed"].map((value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(
                                        value,
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    );
                                  }).toList(),
                                  isExpanded: true,
                                  onChanged: (value) {
                                    setState(() {
                                      status = value;
                                    });
                                    FocusScope.of(context).unfocus();
                                  },
                                ),
                                Divider(
                                  color: Colors.black38,
                                )
                              ],
                            )),
                      ),
                      Expanded(
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Marital Status",
                                  style: TextStyle(color: Colors.blueAccent),
                                ),
                                DropdownButton<String>(
                                  hint: Text("Select"),
                                  value: marital,
                                  underline: SizedBox(),
                                  items: ["Single", "Married"].map((value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(
                                        value,
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    );
                                  }).toList(),
                                  isExpanded: true,
                                  onChanged: (value) {
                                    setState(() {
                                      marital = value;
                                    });
                                    FocusScope.of(context).unfocus();
                                  },
                                ),
                                Divider(
                                  color: Colors.black38,
                                )
                              ],
                            )),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Guarantor's Name",
                                  style: TextStyle(color: Colors.blueAccent),
                                ),
                                DropdownButton<String>(
                                  hint: Text("Select"),
                                  value: sel1,
                                  underline: SizedBox(),
                                  items: ["Male", "Female"].map((value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(
                                        value,
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    );
                                  }).toList(),
                                  isExpanded: true,
                                  onChanged: (value) {
                                    setState(() {
                                      sel1 = value;
                                    });
                                    FocusScope.of(context).unfocus();
                                  },
                                ),
                                Divider(
                                  color: Colors.black38,
                                )
                              ],
                            )),
                      ),
                      Expanded(
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Relationship",
                                  style: TextStyle(color: Colors.blueAccent),
                                ),
                                DropdownButton<String>(
                                  hint: Text("Select"),
                                  value: relate,
                                  underline: SizedBox(),
                                  items: ["Brother", "Sister", "Father", "Mother"].map((value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(
                                        value,
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    );
                                  }).toList(),
                                  isExpanded: true,
                                  onChanged: (value) {
                                    setState(() {
                                      relate = value;
                                    });
                                    FocusScope.of(context).unfocus();
                                  },
                                ),
                                Divider(
                                  color: Colors.black38,
                                )
                              ],
                            )),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Guarantor's Address",
                                  style: TextStyle(color: Colors.blueAccent),
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(
                                        top: 20), // add padding to adjust text
                                    isDense: true,
                                    hintText: "Address",
                                    prefixIcon: Icon(Icons.home),
                                  ),
                                ),
                              ],
                            )),
                      ),
                      Expanded(
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Guarantor's Number",
                                  style: TextStyle(color: Colors.blueAccent),
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(
                                        top: 20), // add padding to adjust text
                                    isDense: true,
                                    hintText: "Number",
                                    prefixIcon: Icon(Icons.phone),
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ],
                  ),
                ],
              )),
          Center(
            child: FlatButton(
              color: Themes.blue,
              padding: EdgeInsets.only(left: 70.0, right: 70.0),
              onPressed: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => EditProfile(),
                  ),
                );
              },
              child: Text(
                "NEXT",
                style: TextStyle(color: Themes.background),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 50.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.lock),
                Text("Your data is secure"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
