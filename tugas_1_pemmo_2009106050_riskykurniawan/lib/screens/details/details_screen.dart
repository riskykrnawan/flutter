import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tugas_1_pemmo_2009106050_riskykurniawan/constants.dart';
import 'package:tugas_1_pemmo_2009106050_riskykurniawan/models/Person.dart';
import 'package:tugas_1_pemmo_2009106050_riskykurniawan/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Person person;

  const DetailsScreen({Key? key, required this.person}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: buildAppBar(context),
      body: Body(person: person),
    );
  }
  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.green,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: const <Widget>[
        SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}
