import 'package:credpal/utils/styles.dart';
import 'package:flutter/material.dart';

class OthersForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18.0),
      child: Column(
        children: <Widget>[
          Divider(),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Employer",
                  style: TextStyle(
                    color: Themes.pureblack,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "CredPal Limited",
                ),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Office Address",
                  style: TextStyle(
                    color: Themes.pureblack,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "75, olonode street, A...ba, Lagos",
                ),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Job Title",
                  style: TextStyle(
                    color: Themes.pureblack,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Graphics & UI/UX Designer",
                ),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Contract Type",
                  style: TextStyle(
                    color: Themes.pureblack,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Full Time",
                ),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Salary",
                  style: TextStyle(
                    color: Themes.pureblack,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "₦ 840,000",
                ),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Next of Kin",
                  style: TextStyle(
                    color: Themes.pureblack,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Oshokoya Joseph",
                ),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Relationship",
                  style: TextStyle(
                    color: Themes.pureblack,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Brother",
                ),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Address",
                  style: TextStyle(
                    color: Themes.pureblack,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Route 7, Ink Park, Toronto,....o, CA.",
                ),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Contact Number",
                  style: TextStyle(
                    color: Themes.pureblack,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "07081888124",
                ),
              ],
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
