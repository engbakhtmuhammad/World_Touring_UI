import 'package:flutter/material.dart';
import 'package:flutter_homescreen_task/Screens/Home.dart';
import 'package:flutter_homescreen_task/Screens/detailsScreen.dart';
import 'package:flutter_homescreen_task/Screens/drawerScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
      headline1: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold, color: Colors.white),
      headline2: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white, letterSpacing: 3),
      bodyText1: TextStyle(fontSize: 16.0, color: Colors.white),
      bodyText2: TextStyle(fontSize: 15.0, color: Colors.white, letterSpacing: 1),
      headline3: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,color: Colors.black),
      headline4: TextStyle(fontSize: 35.0, color: Colors.black,fontWeight: FontWeight.bold,),
      subtitle1: TextStyle(fontSize: 14.0, color: Colors.white, fontWeight: FontWeight.bold, letterSpacing: 1,)
    ),
      ),
      home: Stack(
        children: [
          DrawerScreen(),
          DetailsScreen(),
        ],
      )
    );
  }
}