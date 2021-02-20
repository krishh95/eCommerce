import 'dart:async';

import 'package:ecommerce/Utils/CommonMethods.dart';

import 'LandingPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() {
    return _SplashState();
  }
}

void startTimer(BuildContext context) {
  int duration = 5;
  Timer.periodic(Duration(seconds: 1), (timer) {
    if (timer.tick > duration) {
      timer.cancel();
      Navigator.pushReplacementNamed(context, "/login");
    }
  });
}

class _SplashState extends State<Splash> {
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
