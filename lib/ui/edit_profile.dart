import 'package:credpal/ui/others_form.dart';
import 'package:credpal/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final Map<int, Widget> logoWidgets = const <int, Widget>{
    0: Text('Personal'),
    1: Text('Security'),
    2: Text('Others'),
  };

  final Map<int, Widget> icons = <int, Widget>{
    0: Center(
      child: Text("Personal details goes here"),
    ),
    1: Center(
      child: Text("Security details goes here"),
    ),
    2: OthersForm(),
  };

  int sharedValue = 0;

  @override
  void initState() {
    super.initState();
    sharedValue = 2;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Themes.background,
      body: ListView(
        children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.arrow_back_ios,
                        color: Themes.red,
                      ),
                      Text(
                        "Discard",
                        style: TextStyle(color: Themes.red, fontSize: 18),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: 12.0, right: 12.0, top: 4.0, bottom: 4.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Themes.blue),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.0),
                    ),
                  ),
                  child: Text(
                    "Save",
                    style: TextStyle(
                      color: Themes.blue,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Edit Profile',
              style: TextStyle(
                  color: Themes.pureblack,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: CupertinoSegmentedControl<int>(
              selectedColor: Themes.blue,
              unselectedColor: Themes.background,
              children: logoWidgets,
              onValueChanged: (int val) {
                setState(() {
                  sharedValue = val;
                });
              },
              groupValue: sharedValue,
            ),
          ),
          icons[sharedValue],
        ],
      ),
    );
  }
}
