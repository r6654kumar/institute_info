// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageIdx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        backgroundColor: const Color(0xFF0E3C6E),
        onTap: (index) {
          setState(() {
            pageIdx = index;
          });
        },
        currentIndex: pageIdx,
        items: [
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
              ),
              label: "Search"),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.save_as_outlined,
                size: 30,
              ),
              label: 'Saved'),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.save,
                size: 30,
              ),
              label: 'Saved'),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.account_box,
                size: 30,
              ),
              label: 'Account'),
        ],
      ),
      body: Column(children: [
        SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xFF0E3C6E),
            ),
            child: Column(children: [
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.fromLTRB(20, 50, 170, 20),
                      child: Text(
                        "Find your own way",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white),
                      )),
                  Container(
                    child: Stack(children: <Widget>[
                      Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                      Positioned(
                        top: 0.0,
                        right: 0.0,
                        child: Icon(Icons.brightness_1,
                            size: 8.0, color: Colors.redAccent),
                      )
                    ]),
                  )
                ],
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 170, 0),
                  child: Text(
                    " Search in 600 colleges around!",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  )),
            ]),
          ),
        )
      ]),
    );
  }
}
