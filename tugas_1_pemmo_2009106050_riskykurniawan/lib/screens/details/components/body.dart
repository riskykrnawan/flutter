import 'package:flutter/material.dart';
import 'package:tugas_1_pemmo_2009106050_riskykurniawan/constants.dart';
import 'package:tugas_1_pemmo_2009106050_riskykurniawan/models/Person.dart';

import 'lahir_dan_wafat.dart';
import 'description.dart';
import 'person_title_with_image.dart';

class Body extends StatelessWidget {
  final Person person;

  const Body({Key? key, required this.person}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPaddin,
                    right: kDefaultPaddin,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      LahirDanWafat(person: person),
                      const SizedBox(height: kDefaultPaddin / 2),
                      Description(person: person),
                      const SizedBox(height: kDefaultPaddin / 2),
                      const SizedBox(height: kDefaultPaddin / 2)
                    ],
                  ),
                ),
                PersonTitleWithImage(person: person)
              ],
            ),
          )
        ],
      ),
    );
  }
}
