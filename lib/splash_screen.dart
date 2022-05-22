import 'dart:async';
import 'package:flutter/material.dart';
import 'screens/main/main_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    splashScreenStart();
    super.initState();
  }

  splashScreenStart() {
    const duration = Duration(seconds: 6);
    return Timer(duration, () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) {
          return const MyMainScreen();
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width/1.4;
    var height = MediaQuery.of(context).size.width/1.4;

    return Scaffold(
      body: Center(
        child: Image.asset(
          "assets/images/logo.png",
          width: width,
          height: height,
        ),
      ),
    );
  }
}
