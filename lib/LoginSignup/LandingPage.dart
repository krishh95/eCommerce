import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Utils/CommonMethods.dart';
import 'Signup.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    final loginKey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: Colors.red[400],
      body: Form(
        key: loginKey,
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.all(2.0),
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10.0, 10.0, 18.0, 10.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ///welcome text
                      Padding(
                        padding: EdgeInsets.only(bottom: 20, top: 25),
                        //welcome text
                        child: Text("Login",
                            style: TextStyle(
                                color: Colors.red[600],
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                      ),

                      ///UserName / email Add
                      Container(
                        margin: EdgeInsets.all(10),
                        child: TextFormField(
                          style: TextStyle(color: Colors.black, fontSize: 16),
                          decoration: textFieldStyle("Enter UserName/Email"),
                          validator: (String value) {
                            if (value.isEmpty) {
                              return getRequiredMessage("UserName/Email");
                            }
                            return null;
                          },
                        ),
                      ),

                      ///Password
                      Container(
                        margin: EdgeInsets.all(10),
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

                      ///login button
                      Padding(
                        padding: EdgeInsets.only(top: 8),
                        child: buttonStyle(context, "Login", () {
                          if (loginKey.currentState.validate()) {
                            Navigator.pushReplacementNamed(
                                context, "/productMain");
                          }
                        }),
                      ),

                      ///forget password
                      Padding(
                        padding: EdgeInsets.all(2),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: FlatButton(
                            onPressed: null,
                            child: Text(
                              "Forget Password?",
                              style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red[200]),
                            ),
                          ),
                        ),
                      ),

                      ///register
                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: getRegistrationButton(),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
  GestureDetector getRegistrationButton()
  {
    return GestureDetector(
      onTap: ()
      {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup()));
      },
      child: Container(
        width: 150,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),    color: Colors.red),
        height: 40,
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.all(5),
                child: Icon(
                  Icons.person_add,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Text("Register",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
