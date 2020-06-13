import 'package:credpal/ui/edit_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:credpal/utils/styles.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  PageController controller = PageController();
  DateTime selectedDate;

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
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 40.0, horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        'Date of Birth',
                        style: TextStyle(color: Themes.blue),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Gender',
                        style: TextStyle(color: Themes.blue),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 40.0, horizontal: 16.0),
            child: Text(
              'Residential Address',
              style: TextStyle(color: Themes.blue),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 40.0, horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        'Date of Birth',
                        style: TextStyle(color: Themes.blue),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Gender',
                  style: TextStyle(color: Themes.blue),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 40.0, horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        'Date of Birth',
                        style: TextStyle(color: Themes.blue),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Gender',
                        style: TextStyle(color: Themes.blue),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 40.0, horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        'Date of Birth',
                        style: TextStyle(color: Themes.blue),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Gender',
                        style: TextStyle(color: Themes.blue),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 40.0, horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "Guarantor's Address",
                        style: TextStyle(color: Themes.blue),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Guarantor's Contact Number",
                        style: TextStyle(color: Themes.blue),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
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
