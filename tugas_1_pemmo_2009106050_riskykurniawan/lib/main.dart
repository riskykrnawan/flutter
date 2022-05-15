import 'package:flutter/material.dart';
import 'package:tugas_1_pemmo_2009106050_riskykurniawan/screens/login_page.dart';
import 'package:tugas_1_pemmo_2009106050_riskykurniawan/screens/page_five.dart';
import 'package:tugas_1_pemmo_2009106050_riskykurniawan/screens/page_four.dart';
import 'package:tugas_1_pemmo_2009106050_riskykurniawan/screens/page_one.dart';
import 'package:tugas_1_pemmo_2009106050_riskykurniawan/screens/page_three.dart';
import 'package:tugas_1_pemmo_2009106050_riskykurniawan/screens/page_two.dart'; 

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/one': (context) => const PageOne(),
        '/two': (context) => const PageTwo(),
        '/three': (context) => const PageThree(),
        '/four': (context) => const PageFour(),
        '/five': (context) => const PageFive(),
      }
    );
  }
}
