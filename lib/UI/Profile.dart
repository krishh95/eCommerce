import 'package:ecommerce/Utils/CommonMethods.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _Profile createState() => _Profile();
}

class _Profile extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[600],
        title: Text("Profile"),
      ),
      body: Column(
        children: [
          SizedBox(
            width: 70,
            height: 70,
          ),
          Align(
              alignment: Alignment.center,
              child: Container(
                alignment: Alignment.bottomRight,
                width: 150,
                height: 150,
                child: Stack(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(
                        getImageAssetPath("f1.jpg"),
                      ),
                    ),
                    RaisedButton(
                      shape: CircleBorder(),
                      focusColor: Colors.red[600],
                      disabledTextColor: Colors.red[600],
                      disabledColor: Colors.red[600],
                      color: Colors.red[600],
                      highlightColor: Colors.red[600],
                      child: Icon(
                        Icons.edit,
                        color: Colors.white,
                      ),
                      onPressed: null,
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
