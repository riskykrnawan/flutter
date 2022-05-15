import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    var tinggi = MediaQuery.of(context).size.height;
    var lebar = MediaQuery.of(context).size.width;

    return MaterialApp(
      title: 'Risky Kurniawan',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
          title: const Text("Posttest 1 Risky Kurniawan",),
        ),

        drawer: Drawer(
          child: ListView(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  
                  // foregroundColor: Colors.white,
                ),
                child: Text('Risky Kurniawan', style: TextStyle(color: Colors.white)),

                // foregroundColor: Colors.white,
              ),
              ListTile(
                title: const Text('Posttest 1'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Posttest 2'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Posttest 3'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),

        body: Container(
            width: lebar,
            height: tinggi,
            alignment: Alignment.center,
            
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                stops: [
                  0.10, 
                  0.93, 
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color(0xFF332c59), 
                  Color(0xFF7268a1), 
                ],
              )
            ),
            child: Text(
              'Risky Kurniawan',
              style: GoogleFonts.getFont(
                'Hurricane',
                fontSize: 45,
                color: Colors.white,
              ),
            ),
          )

      ),
    );
  }
}