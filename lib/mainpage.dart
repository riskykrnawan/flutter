// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends StatelessWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var tinggi = MediaQuery.of(context).size.height;
    var lebar = MediaQuery.of(context).size.width;

    const String assetName = 'assets/vector/star.svg';
    Widget svgIcon = SvgPicture.asset(
      assetName,
      color: Colors.red,
      semanticsLabel: 'Stars'
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff009688),
        title: Text(
          "Risky Kurniawan",
          style: GoogleFonts.getFont(
            'Hurricane',
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor:const Color.fromARGB(255, 255, 255, 255),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: lebar,
                height: 250,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/reel.png"),
                  ),
                ),
              ),
              Text(
                "Fugu",
                style: GoogleFonts.getFont(
                  'Hurricane',
                  fontSize: 35,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Bait Casting Fugu Taru 17 + 1 Ball Bearings",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF023E4A),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 40,
                  left: 25,
                  right: 25,
                ),
                child: Text(
                  "Hadir dengan fitur 17 + 1 Ball Bearings, dilengkapi dengan Gear Ratio 7,1 : 1 dan Ideal Drag 8 Kg atau setara dengan 17 lbs dengan harga yang cukup terjangkau.",
                  textAlign: TextAlign.center,
                ),
              ),
              SvgPicture.asset(
                  'assets/vector/down.svg',
              ),
              Container(
                width: lebar,
                margin: const EdgeInsets.only(right: 40, left: 40, top: 40),
                padding: const EdgeInsets.only(bottom: 13, right: 17),
                child: const Text(
                  'Rp. 310.000',
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 21),
                ),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Color.fromARGB(255, 172, 172, 172), width: 2.1),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Pilih Warna',
                textAlign: TextAlign.left,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 60,
                    )
                  ),
                  ColorsContainer(colors: 0xffFF0000),
                  ColorsContainer(colors: 0xffFEFF22),
                  ColorsContainer(colors: 0xff00FFDD),
                  ColorsContainer(colors: 0xff000000),
                ],
              ),
              MyButton(),
          ],)
        ],
      )
    );
  }
}

class ColorsContainer extends StatelessWidget {
  const ColorsContainer({Key? key, this.isActive = false, required this.colors})
    : super(key: key);

  final bool isActive;
  final int colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        color: Color(colors),
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          width: 2.5,
          color: const Color(0xffECEAEA),
        ),
      ),
    );
    // );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      height: 45,
      margin: const EdgeInsets.only(top: 50),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: const Color(0xFF00796B),
        borderRadius: BorderRadius.circular(50),
      ),
      child: const Text(
        "Beli Sekarang",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}

