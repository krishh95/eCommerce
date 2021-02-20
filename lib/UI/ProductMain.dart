import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:ecommerce/UI/Home.dart';
import 'package:ecommerce/UI/Search.dart';
import 'package:flutter/material.dart';

import 'MyNotification.dart';
import 'Profile.dart';

int _currentTabIndex = 0;

class ProductMain extends StatefulWidget {
  @override
  _ProductMain createState() => _ProductMain();
}

StatefulWidget getPage(int value) {
  StatefulWidget val = Home();
  switch (value) {
    case 0:
      val = Home();
      break;
    case 1:
      val = Search();
      break;
    case 2:
      val = MyNotification();
      break;
    case 3:
      val = Profile();
      break;
  }
  return val;
}

class _ProductMain extends State<ProductMain> {
  StatefulWidget current = getPage(_currentTabIndex);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DoubleBackToCloseApp(
          snackBar: const SnackBar(
            content: Text('Tap back again to leave'),
          ),
          child: current),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentTabIndex,
        showUnselectedLabels: false,
        backgroundColor: Colors.grey[100],
        showSelectedLabels: false,
        selectedItemColor: Colors.red[600],
        unselectedItemColor: Colors.grey[500],
        elevation: 2.0,
        onTap: _onTap,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            title: Text("Search"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications_none,
            ),
            title: Text("Notifications"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_outlined,
            ),
            title: Text("Profile"),
          ),
        ],
      ),
    );
  }

  void _onTap(int value) {
    setState(() {
      _currentTabIndex = value;
      current = getPage(value);
    });
  }
}
