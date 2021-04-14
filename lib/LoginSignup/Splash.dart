import 'dart:async';

import 'package:ecommerce/LoginSignup/LandingPage.dart';
import 'package:ecommerce/Utils/CommonMethods.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    startTimer(context);
    return Scaffold(
      body: Stack(children: <Widget>[
        Container(
          child: Image(
            image: AssetImage(
              getImageAssetPath("splashImage.jpg"),
            ),
            width: double.maxFinite,
            height: double.maxFinite,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          margin: EdgeInsets.all(20.0),
          child: CircularProgressIndicator(
            valueColor: new AlwaysStoppedAnimation<Color>(getWidgetColor()),
          ),
          alignment: Alignment.bottomCenter,
        ),
      ]),
    );
  }
}

void startTimer(BuildContext context) {
  int duration = 5;
  Timer.periodic(Duration(seconds: 1), (timer) {
    if (timer.tick > duration) {
      timer.cancel();
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LandingPage()));
    }
  });
}


