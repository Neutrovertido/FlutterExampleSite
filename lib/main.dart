import 'package:flutter/material.dart';
import 'package:fluttertutorial/Navbar/Navbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latom Studios',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TheHome(),
    );
  }
}

class TheHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.red, Colors.orange])),
        child: Column(
          children: <Widget>[Navbar()],
        ),
      ),
    );
  }
}