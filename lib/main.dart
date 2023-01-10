import 'package:flutter/material.dart';
import 'package:institute_info/pages/HomePage1.dart';
import 'package:institute_info/pages/homepage.dart';
void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Institute Info",
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
       routes: {
      "/" : (context) => HomeScreen(),
      "/homepage1" : (context) => HomePage1(),
    },
    );
  }
}