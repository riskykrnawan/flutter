import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tugas_1_pemmo_2009106050_riskykurniawan/models/Person.dart';
import 'package:tugas_1_pemmo_2009106050_riskykurniawan/screens/home/components/body.dart';

import '../../constants.dart';

class Home extends StatelessWidget {
  const Home({ Key? key, required this.persons }) : super(key: key);
  final Person persons;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}