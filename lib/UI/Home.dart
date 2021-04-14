import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/Utils/CommonMethods.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[600],
          title: Text("Home"),
          actions: [
            IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
                onPressed: null
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ///corosal
              Padding(
                padding: EdgeInsets.all(10),
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 200.0,
                    autoPlay: true,
                    autoPlayAnimationDuration: Duration(seconds: 2),
                    enlargeCenterPage: false,
                  ),
                  items: [1, 2, 3, 4, 5].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Card(
                          color: Colors.red[600],
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                          ),
                          child: Container(
                              width: MediaQuery.of(context).size.width,
                              child: Icon(Icons.add_shopping_cart)),
                        );
                      },
                    );
                  }).toList(),
                ),
              ),

              ///all categories
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10,
                            height: 30,
                            child: Container(
                              color: Colors.red[600],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              margin: EdgeInsets.all(5),
                              child: Text(
                                "All Categories",
                                style: TextStyle(
                                    color: Colors.red[600],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(
                              "View All",
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                  color: Colors.grey[800],
                                  fontWeight: FontWeight.normal,
                                  fontSize: 15.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: GridView.count(
                          primary: false,
                          crossAxisCount: 3,
                          shrinkWrap: true,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Flexible(
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(40)),
                                      child: Padding(
                                        padding: EdgeInsets.all(30),
                                        child: Icon(Icons.pest_control_rodent),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Lotus",
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Flexible(
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(40)),
                                      child: Padding(
                                        padding: EdgeInsets.all(30),
                                        child: Icon(Icons.pest_control_rodent),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Lotus",
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Flexible(
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(40)),
                                      child: Padding(
                                        padding: EdgeInsets.all(30),
                                        child: Icon(Icons.pest_control_rodent),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Lotus",
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Flexible(
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(40)),
                                      child: Padding(
                                        padding: EdgeInsets.all(30),
                                        child: Icon(Icons.pest_control_rodent),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Lotus",
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Flexible(
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(40)),
                                      child: Padding(
                                        padding: EdgeInsets.all(30),
                                        child: Icon(Icons.pest_control_rodent),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Lotus",
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ]),
                    )
                  ],
                ),
              ),

              ///daily top deals
              ///
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10,
                            height: 30,
                            child: Container(
                              color: Colors.red[600],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              margin: EdgeInsets.all(5),
                              child: Text(
                                "Daily Top Deals",
                                style: TextStyle(
                                    color: Colors.red[600],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(
                              "View All",
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                  color: Colors.grey[800],
                                  fontWeight: FontWeight.normal,
                                  fontSize: 15.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: GridView.count(
                          primary: false,
                          crossAxisCount: 3,
                          shrinkWrap: true,
                          children: [
                            Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              child: Container(
                                margin: EdgeInsets.all(2),
                                child: Column(
                                  children: [
                                    Flexible(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.elliptical(5, 5),
                                          topRight: Radius.elliptical(5, 5),
                                        ),
                                        child: Image(
                                          width: double.maxFinite,
                                          height: 500,
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                              getImageAssetPath("f1.jpg")),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Lotus",
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Rs.200",
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ]),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
