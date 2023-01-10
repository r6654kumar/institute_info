// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({super.key});

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: GestureDetector(
          onTap: () {},
          child: Container(
            height: 40,
            margin: EdgeInsets.symmetric(vertical: 24, horizontal: 40),
            color: Color(0xFF0E3C6E),
            child: Center(
                child: Text("Apply Now",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold))),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  height: MediaQuery.of(context).size.height / 7,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color(0xFF0E3C6E),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50)),
                        child: GestureDetector(
                          child: Icon(Icons.arrow_back),
                          onTap: () {
                            Navigator.pushNamed(context, "/homepage1");
                          },
                        ),
                      ),
                      SizedBox(width: 320),
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50)),
                        child: Icon(Icons.bookmark_border_outlined),
                      ),
                    ],
                  )),
              Container(
                height: 250,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "images/image6.jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                  // ignore: prefer_const_literals_to_create_immutables
                  child: Column(
                children: [
                  Container(
                      margin: EdgeInsets.fromLTRB(0, 15, 190, 0),
                      child: Text("GHJK Engineering college",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold))),
                  Row(
                    children: [
                      Container(
                        width: 300,
                        margin: EdgeInsets.fromLTRB(10, 15, 10, 0),
                        child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Felis consectetur nulla pharetra praesent hendrerit vulputate viverra. Pellentesque aliquam tempus faucibus est.",
                            style: TextStyle(fontSize: 12)),
                      ),
                      SizedBox(width: 25),
                      Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            children: [
                              Container(
                                  child: Text(" 4.3",
                                      style: TextStyle(color: Colors.white))),
                              Icon(
                                Icons.star,
                                color: Colors.white,
                              ),
                            ],
                          ))
                    ],
                  )
                ],
              )),
              SizedBox(
                height: 10,
              ),
            
            ],
          ),
        ));
  }
}
