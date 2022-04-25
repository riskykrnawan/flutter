import 'package:flutter/material.dart';
import 'package:tugas_1_pemmo_2009106050_riskykurniawan/models/Person.dart';

import '../../../constants.dart';

class Description extends StatelessWidget {
  const Description({
    Key? key,
    required this.person,
  }) : super(key: key);

  final Person person;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Text(
        person.description,
        style: const TextStyle(height: 1.5),
      ),
    );
  }
}
