import 'package:flutter/material.dart';
import 'package:posttest4_2009106050_riskykurniawan/screens/main/main_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Posttest 4',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyMainPage(),
    );
  }
}
