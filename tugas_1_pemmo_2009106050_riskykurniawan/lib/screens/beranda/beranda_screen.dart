import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tugas_1_pemmo_2009106050_riskykurniawan/screens/beranda/components/body.dart';

import '../../constants.dart';

class Beranda extends StatelessWidget {
  const Beranda({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}