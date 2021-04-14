import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Utils/CommonMethods.dart';

class Signup extends StatefulWidget {
  @override
  _Signup createState() => _Signup();
}

class _Signup extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    final signUPKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          "Register",
        ),
        backgroundColor: getActionBarColor(),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: signUPKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    ///FirstName
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: TextFormField(
                        style: TextStyle(color: Colors.black, fontSize: 16),
                        decoration: textFieldStyle("Enter First Name"),
                        validator: (String value) {
                          if (value.isEmpty) {
                            return getRequiredMessage("First Name");
                          }
                          return null;
                        },
                      ),
                    ),

                    ///LastName
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: TextFormField(
                        style: TextStyle(color: Colors.black, fontSize: 16),
                        decoration: textFieldStyle("Enter Last Name"),
                        validator: (String value) {
                          if (value.isEmpty) {
                            return getRequiredMessage("Last Name");
                          }
                          return null;
                        },
                      ),
                    ),

                    ///email
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: TextFormField(
                        style: TextStyle(color: Colors.black, fontSize: 16),
                        decoration: textFieldStyle("Enter Email"),
                        validator: (String value) {
                          if (value.isEmpty) {
                            return getRequiredMessage("Email");
                          }
                          return null;
                        },
                      ),
                    ),

                    ///password
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: TextFormField(
                        obscureText: true,
                        style: TextStyle(color: Colors.black, fontSize: 16),
                        decoration: textFieldStyle("Enter Password"),
                        validator: (String value) {
                          if (value.isEmpty) {
                            return getRequiredMessage("Password");
                          }
                          return null;
                        },
                      ),
                    ),

                    ///Signup button
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: buttonStyle(context, "Signup", () {
                        if (signUPKey.currentState.validate()) {
                          Navigator.pushReplacementNamed(context, "/productMain");
                        }
                      }),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
