// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({super.key});

  @override
  State<HomePage1> createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
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
          // ignore: prefer_const_literals_to_create_immutables
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
                        margin: EdgeInsets.fromLTRB(15, 50, 200, 20),
                        child: Text(
                          "Find your own way",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white),
                        )),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        // ignore: prefer_const_literals_to_create_immutables
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
                      ),
                    )
                  ],
                ),
                Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 200, 0),
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
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(
                            Icons.mic,
                            color: Colors.black,
                          )),
                    )
                  ],
                )),
              ]),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Row(children: [
              Container(
                height: 40,
                width: 180,
                child: Center(child: Text(" MVSH Engineering college ")),
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Container(
                height: 40,
                width: 180,
                child: Center(child: Text(" MVSH Engineering college ")),
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ]),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "/homepage2");
            },
            child: Container(
              margin: EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0))),
                child: InkWell(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch, // add this
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        ),
                        child: Stack(children: [
                          Container(
                            child: Image.asset("images/image4.jpg",
                                height: 120, fit: BoxFit.fill),
                          ),
                          Positioned(
                              right: 25.0,
                              top: 10.0,
                              child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Icon(Icons.bookmark_border,
                                      color: Colors.black))),
                          Positioned(
                              left: 10.0,
                              top: 10.0,
                              child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child:
                                      Icon(Icons.share, color: Colors.black)))
                        ]),
                      ),
                      Column(
                        children: [
                          Row(
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
                                  ))
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                height: 100,
                                width: 280,
                                child: Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu ut imperdiet sed nec ullamcorper.",
                                    style: TextStyle(fontSize: 15)),
                              ),
                              GestureDetector(
                                child: Container(
                                  height: 40,
                                  width: 80,
                                  child: Container(
                                      child: TextButton(
                                          onPressed: () {
                                            Navigator.pushNamed(
                                                context, "/homepage2");
                                          },
                                          child: Text("Apply Now",
                                              style: TextStyle(
                                                  color: Colors.white))),
                                      color: Color(0xFF0E3C6E)),
                                ),
                              )
                            ],
                          ),
                          Divider(color: Colors.black),
                          Row(
                            children: [
                              Container(
                                  color: Colors.blue,
                                  child: Icon(Icons.thumb_up,
                                      color: Colors.white)),
                              Text(
                                  "   More than 1000+ students have been placed",
                                  style: TextStyle(fontSize: 12)),
                              SizedBox(width: 50),
                              Container(
                                  child: Icon(
                                Icons.visibility,
                                color: Colors.grey,
                              )),
                              Text("468+")
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0))),
                child: InkWell(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch, // add this
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        ),
                        child: Stack(
                          children: [
                            Container(
                              child: Image.asset("images/image5.jpg",
                                  height: 120, fit: BoxFit.fill),
                            ),
                            Positioned(
                                right: 25.0,
                                top: 10.0,
                                child: Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Icon(Icons.bookmark_border,
                                        color: Colors.black))),
                            Positioned(
                                left: 10.0,
                                top: 10.0,
                                child: Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child:
                                        Icon(Icons.share, color: Colors.black)))
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text("Bachelor of Technology",
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
                                  ))
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                height: 100,
                                width: 280,
                                child: Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu ut imperdiet sed nec ullamcorper.",
                                    style: TextStyle(fontSize: 15)),
                              ),
                              GestureDetector(
                                child: Container(
                                  height: 40,
                                  width: 80,
                                  child: Container(
                                      child: TextButton(
                                          onPressed: () {},
                                          child: Text("Apply Now",
                                              style: TextStyle(
                                                  color: Colors.white))),
                                      color: Color(0xFF0E3C6E)),
                                ),
                              )
                            ],
                          ),
                          Divider(color: Colors.black),
                          Row(
                            children: [
                              Container(
                                  color: Colors.blue,
                                  child: Icon(Icons.thumb_up,
                                      color: Colors.white)),
                              Text(
                                  " Lorem ipsum dolor sit amet, consectetur adipiscing ",
                                  style: TextStyle(fontSize: 10)),
                              SizedBox(width: 50),
                              Container(
                                  child: Icon(
                                Icons.visibility,
                                color: Colors.grey,
                              )),
                              Text("468+")
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ])));
  }
}
