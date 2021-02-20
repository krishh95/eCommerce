import 'package:ecommerce/LoginSignup/LandingPage.dart';
import 'package:ecommerce/LoginSignup/Signup.dart';
import 'package:ecommerce/LoginSignup/Splash.dart';
import 'package:ecommerce/UI/Home.dart';
import 'package:ecommerce/UI/ProductMain.dart';
import 'package:ecommerce/UI/MyNotification.dart';
import 'package:ecommerce/UI/Profile.dart';
import 'package:ecommerce/UI/Search.dart';
import 'package:flutter/material.dart';

String getRequiredMessage(String val) {
  return "Please Enter " + val;
}

String getProjectName() {
  return "Ecommerce";
}

String getImageAssetPath(String imageName) {
  return "assets/Images/" + imageName;
}

Color getActionBarColor() {
  return Colors.red[400];
}

double txt_16() {
  return 16.0;
}

double txt_15() {
  return 15.0;
}

double txt_12() {
  return 12.0;
}

double txt_14() {
  return 14.0;
}

double txt_13() {
  return 13.0;
}

double txt_11() {
  return 11.0;
}

double txt_09() {
  return 9.0;
}

Color getWidgetColor() {
  return Colors.red[800];
}

AppBar getAppBar() {
  return AppBar(
    title: Text(
      getProjectName(),
    ),
    backgroundColor: getActionBarColor(),
  );
}

Map<String, WidgetBuilder> routes() {
  return {
    '/': (context) => ProductMain(),
    /*'/': (context) => Splash(),*/
    '/login': (context) => LandingPage(),
    '/signup': (context) => Signup(),
    '/productMain': (context) => ProductMain(),
    '/productMain/home': (context) => Home(),
    '/productMain/notification': (context) => MyNotification(),
    '/productMain/search': (context) => Search(),
    '/productMain/profile': (context) => Profile(),
  };
}

InputDecoration textFieldStyle(String HintText) {
  return InputDecoration(
    labelText: HintText,
    labelStyle: TextStyle(fontSize: 13, color: Colors.grey[400]),
    fillColor: Colors.white,
    border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15.0),
        borderSide: BorderSide(
          color: Colors.grey[300],
          width: 1.2,
        )),
    errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15.0),
        borderSide: BorderSide(
          color: Colors.red[600],
          width: 1.2,
        )),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15.0),
      borderSide: BorderSide(
        color: Colors.red[400],
        width: 1.2,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15.0),
      borderSide: BorderSide(
        color: Colors.grey[300],
        width: 1.2,
      ),
    ),
  );
}

SizedBox buttonStyle(BuildContext context, String text, Function onPressedFun) {
  return SizedBox(
    width: 150,
    height: 40,
    child: RaisedButton(
      child: Text(
        text,
        style: TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
      ),
      disabledTextColor: Colors.grey[400],
      disabledColor: Colors.red[200],
      color: Colors.red[200],
      shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.red[800], width: 1.0),
          borderRadius: new BorderRadius.circular(5.0)),
      onPressed: onPressedFun,
    ),
  );
}
