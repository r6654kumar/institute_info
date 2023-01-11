// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:institute_info/pages/HostelFacility2.dart';

class HostelFacility extends StatelessWidget {
  const HostelFacility({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: DefaultTabController(
      length: 4,
      child: Column(
        children: <Widget>[
          ButtonsTabBar(
              backgroundColor: const Color(0xFF0E3C6E),
              unselectedBackgroundColor: Colors.white,
              borderWidth: 1,
              borderColor: Color(0xFF0E3C6E),

              // ignore: prefer_const_literals_to_create_immutables
              tabs: [
                Tab(
                    child: Container(
                  width: 50,
                  // ignore: prefer_const_literals_to_create_immutables
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(
                        Icons.bed,
                        color: Colors.black,
                      ),
                      Text(" 4", style: TextStyle(color: Colors.black)),
                    ],
                  ),
                )),
                Tab(
                    child: Container(
                  width: 50,
                  // ignore: prefer_const_literals_to_create_immutables
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(
                        Icons.bed,
                        color: Colors.black,
                      ),
                      Text(" 3", style: TextStyle(color: Colors.black)),
                    ],
                  ),
                )),
                Tab(
                    child: Container(
                  width: 50,
                  // ignore: prefer_const_literals_to_create_immutables
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(
                        Icons.bed,
                        color: Colors.black,
                      ),
                      Text(" 2", style: TextStyle(color: Colors.black)),
                    ],
                  ),
                )),
                Tab(
                    child: Container(
                  width: 50,
                  // ignore: prefer_const_literals_to_create_immutables
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(
                        Icons.bed,
                        color: Colors.black,
                      ),
                      Text(" 1", style: TextStyle(color: Colors.black)),
                    ],
                  ),
                )),
              ]),
          Expanded(
            child: TabBarView(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  SingleChildScrollView(
                    child: Container(
                        child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        HostelFacility2(),
                        Container(
                            margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Row(
                              children: [
                                Text("GHJK Engineering college",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15)),
                                Container(
                                    margin: EdgeInsets.fromLTRB(150, 0, 10, 0),
                                    height: 30,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                            child: Text(" 4.3",
                                                style: TextStyle(
                                                    color: Colors.white))),
                                        Icon(
                                          Icons.star,
                                          color: Colors.white,
                                        ),
                                      ],
                                    )),
                              ],
                            )),
                        Container(
                            margin: EdgeInsets.all(15),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.location_on_outlined,
                                        color: Colors.blue),
                                    Text(
                                      "Lorem ipsum dolor sit amet, consectetur ",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ],
                                ),
                                Container(
                                    margin: EdgeInsets.all(10),
                                    child: Text(
                                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.0",
                                        style: TextStyle(fontSize: 12))),
                                Container(
                                  margin: EdgeInsets.fromLTRB(10, 20, 310, 0),
                                  child: Text("Facilities",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14)),
                                ),
                                Container(
                                    child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                            margin: EdgeInsets.fromLTRB(
                                                10, 20, 0, 0),
                                            child: Image.asset(
                                                "images/icon2.jpg")),
                                        Container(
                                            margin: EdgeInsets.fromLTRB(
                                                0, 20, 0, 0),
                                            child: Text(" College in 400mtrs",
                                                style: TextStyle(fontSize: 12)))
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                            margin: EdgeInsets.fromLTRB(
                                                12, 35, 0, 0),
                                            child: Image.asset(
                                                "images/icon1.jpg")),
                                        Container(
                                            margin: EdgeInsets.fromLTRB(
                                                0, 30, 0, 0),
                                            child: Text(" Bathrooms:2",
                                                style: TextStyle(fontSize: 12)))
                                      ],
                                    ),
                                  ],
                                ))
                              ],
                            )),
                      ],
                    )),
                  ),
                  Container(),
                  Container(),
                  Container(),
                ]),
          ),
        ],
      ),
    ));
  }
}
