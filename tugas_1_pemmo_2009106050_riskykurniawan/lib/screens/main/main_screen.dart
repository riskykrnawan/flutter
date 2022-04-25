import 'package:flutter/material.dart';
import 'package:tugas_1_pemmo_2009106050_riskykurniawan/screens/beranda/beranda_screen.dart';
import 'package:tugas_1_pemmo_2009106050_riskykurniawan/screens/home/components/body.dart';
// import 'package:tugas_1_pemmo_2009106050_riskykurniawan/screens/home/home.dart';
import 'package:tugas_1_pemmo_2009106050_riskykurniawan/screens/my_profile/my_profile.dart';

class MyMainPage extends StatefulWidget {
  const MyMainPage({Key? key}) : super(key: key);

  @override
  State<MyMainPage> createState() => _MyMainPageState();
}

class _MyMainPageState extends State<MyMainPage> {
  final List<Widget> _children = [
    // const HomeScreen(),
    // const MyForm(),
    const Body(),
    Beranda(),
    MyProfile(),
  ];

  final List<BottomNavigationBarItem> _bottomItem = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.person_sharp),
      label: "Ulama",
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.library_books_sharp),
      label: "Beranda",
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: "Profile",
    ),
  ];

  int currentIndex = 0;
  
  void onTabTapped(int index) {
    setState(() {currentIndex = index;});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:_children[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedIconTheme:  const IconThemeData(color: Colors.black38),
        currentIndex: currentIndex,
        items: _bottomItem, 
        onTap: onTabTapped,
      ),
    );
  }
}