// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';

class AboutCollege extends StatelessWidget {
  const AboutCollege({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          child: Column(
        children: [
          Container(
              margin: EdgeInsets.fromLTRB(10, 20, 280, 0),
              child: Text(
                "Description",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              )),
          Container(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.",
                style: TextStyle(fontSize: 15),
              )),
          Container(
              margin: EdgeInsets.fromLTRB(10, 5, 300, 0),
              child: Text(
                "Location",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              )),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width - 100,
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/image7.jpg"), fit: BoxFit.cover)),
          ),
          Container(
              margin: EdgeInsets.fromLTRB(0, 5, 220, 0),
              child: Text(
                "Student's reviews",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              )),
          SizedBox(
            height: 10,
          ),
          Container(
            child: DefaultTabController(
                length: 5, // length of tabs
                initialIndex: 0,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: TabBar(
                          isScrollable: true,
                          tabs: [
                            Tab(
                                child: Container(
                                    height: 500,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                      image:
                                          AssetImage("images/image8 (1).jpg"),
                                      fit: BoxFit.cover,
                                    )))),
                            Tab(
                                child: Container(
                                    height: 500,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                      image:
                                          AssetImage("images/image8 (2).jpg"),
                                      fit: BoxFit.cover,
                                    )))),
                            Tab(
                                child: Container(
                                    height: 500,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                      image:
                                          AssetImage("images/image8 (3).jpg"),
                                      fit: BoxFit.cover,
                                    )))),
                            Tab(
                                child: Container(
                                    height: 500,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                      image:
                                          AssetImage("images/image8 (4).jpg"),
                                      fit: BoxFit.cover,
                                    )))),
                            Tab(
                              child: Container(
                                height: 500,
                                width: 60,
                                color: Colors.grey,
                                child: Text("+12 more",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 10)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                          height: 400, //height of TabBarView
                          decoration: BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      color: Colors.grey, width: 0.5))),
                          child: TabBarView(children: <Widget>[
                            Container(
                              child:Text("hii")
                            ),
                            Container(),
                            Container(),
                            Container(),
                            Container(),
                          ]))
                    ])),
          )
        ],
      )),
    );
  }
}
