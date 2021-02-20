import 'package:flutter/material.dart';

class MyNotification extends StatefulWidget {
  @override
  _MyNotification createState() => _MyNotification();
}

class _MyNotification extends State<MyNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[600],
        title: Text("Notification"),
      ),
      body: Text("Notification"),
    );
  }
}
