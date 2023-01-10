// ignore_for_file: prefer_const_constructors

import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
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
                  Container(
                    child: Text("TODO"),
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
