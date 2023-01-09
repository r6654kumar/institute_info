// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageIdx = 0;
  TextEditingController textController = TextEditingController();
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
      body: SingleChildScrollView(
        child: Column(children: [
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
                      "Search in 600 colleges around!",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    )),
                Container(
                    child: Row(
                  children: [
                    Container(
                        margin: EdgeInsets.fromLTRB(10, 20, 30, 10),
                        width: MediaQuery.of(context).size.width - 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(70),
                        ),
                        child: TextField(
                          controller: textController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search for colleges, schools.....",
                            prefixIcon: Icon(Icons.search),
                          ),
                        )),
                    Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.mic,
                          color: Colors.black,
                        ))
                  ],
                )),
              ]),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          GestureDetector(
            onTap: () {
             showMaterialModalBottomSheet(
                context: context,
                enableDrag: true,
                builder: (context) => Container(
                  height: 200,
                ),
              );;
            },
            child: Container(
                width: MediaQuery.of(context).size.width - 30,
                height: MediaQuery.of(context).size.height / 5,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/image1.jpg"),
                        fit: BoxFit.cover)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Top Colleges",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 23)),
                    Container(
                      height: 80,
                      width: 250,
                      child: Text(
                          "Search through thousands of accredited colleges and universities online to find the right one for you.  Apply in 3 min, and connect with your future.",
                          style: TextStyle(color: Colors.white, fontSize: 13)),
                    ),
                    Container(
                        margin: EdgeInsets.fromLTRB(310, 15, 0, 0),
                        child: Text(
                          "+126 Colleges",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w900),
                        )),
                  ],
                )),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
              width: MediaQuery.of(context).size.width - 30,
              height: MediaQuery.of(context).size.height / 5,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/image2.jpg"),
                      fit: BoxFit.cover)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Top Schools",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 23)),
                  Container(
                    height: 80,
                    width: 250,
                    child: Text(
                        "Searching for the best school for you just got easier! With our Advanced School Search, you can easily filter out the schools that are fit for you.",
                        style: TextStyle(color: Colors.white, fontSize: 13)),
                  ),
                  Container(
                      margin: EdgeInsets.fromLTRB(310, 12, 0, 0),
                      child: Text(
                        "+106 Schools",
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w900),
                      )),
                ],
              )),
          SizedBox(
            height: 40,
          ),
          Container(
              width: MediaQuery.of(context).size.width - 30,
              height: MediaQuery.of(context).size.height / 5,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/image3.jpg"),
                      fit: BoxFit.cover)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Exams",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 23)),
                  Container(
                    height: 80,
                    width: 250,
                    child: Text(
                        "Find an end to end information about the exams that are happening in India",
                        style: TextStyle(color: Colors.white, fontSize: 13)),
                  ),
                  Container(
                      margin: EdgeInsets.fromLTRB(310, 15, 0, 0),
                      child: Text(
                        "+16 Exams",
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w900),
                      )),
                ],
              )),
          SizedBox(
            height: 40,
          ),
        ]),
      ),
    );
  }
}
