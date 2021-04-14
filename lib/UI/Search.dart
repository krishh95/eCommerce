import 'package:ecommerce/Utils/CommonMethods.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _Search createState() => _Search();
}

class _Search extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[600],
          title: Text("Search"),
          actions: [
            IconButton(
                onPressed: null,
                icon: Icon(Icons.notifications, color: Colors.white)),
            IconButton(
                onPressed: null,
                icon: Icon(Icons.shopping_cart, color: Colors.white),
                color: Colors.white),
          ],
        ),
        body: Form(
            child: Column(children: [
          SizedBox(width: double.maxFinite, height: 18),
          Padding(
            padding: EdgeInsets.only(left: 8, right: 8),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: TextFormField(
                    style: TextStyle(color: Colors.black, fontSize: 16),
                    decoration: textFieldStyleWithIcon(
                        "Enter Product Name", Icon(Icons.search,color: Colors.red[600],)),
                    validator: (String value) {
                      if (value.isEmpty) {
                        return getRequiredMessage("Product Name");
                      }
                      return null;
                    },
                  ),
                ),
                ///
                Expanded(
                    flex: 0,
                    child: Card(
                      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      color: Colors.grey[300],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      child: IconButton(
                          iconSize: 25,
                          onPressed: (){

                          },
                          icon: Icon(Icons.tune,color: Colors.grey,),color: Colors.black,),
                    )),
              ],
            ),
          ),
        ])));
  }
}
