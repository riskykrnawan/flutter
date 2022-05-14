import 'package:flutter/material.dart';
import '/screens/forms/form_screen.dart';
import '/screens/home/home_screen.dart';
import '/screens/toko_saya/toko_saya_screen.dart';

class MyMainPage extends StatefulWidget {
  const MyMainPage({Key? key}) : super(key: key);

  @override
  State<MyMainPage> createState() => _MyMainPageState();
}

class _MyMainPageState extends State<MyMainPage> {
  final List<Widget> _children = [
    const HomeScreen(),
    const MyForm(),
    TokoSaya(),
  ];

  final List<BottomNavigationBarItem> _bottomItem = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: "Home",
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.add),
      label: "Add Product",
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