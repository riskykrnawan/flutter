import 'package:flutter/material.dart';
import 'package:tugas_1_pemmo_2009106050_riskykurniawan/models/Person.dart';

import '../../../constants.dart';

class PersonTitleWithImage extends StatelessWidget {
  const PersonTitleWithImage({
    Key? key,
    required this.person,
  }) : super(key: key);

  final Person person;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Stack(
            children: [
              CircleAvatar(
                radius: 100,
                backgroundColor: Color.fromARGB(255, 32, 109, 35),
                child: CircleAvatar(
                radius: 95.0,
                backgroundImage: NetworkImage(
                    person.image),
              ),
              )
            ],
          ),

          const SizedBox(
            height: 20,
          ),
          // Text(
          //   person.name,
          //   style: const TextStyle(
          //     fontSize: 25,
          //     fontWeight: FontWeight.bold,
          //     color: Colors.white,
          //   ),
          // ),
          const SizedBox(height: kDefaultPaddin),
          Row(
            children: <Widget>[
              const SizedBox(width: kDefaultPaddin),
              // Container(
              //   alignment: Alignment.center,
              //   height: 170.0,
              //   width: 170.0,
              //   decoration: const BoxDecoration(
              //     shape: BoxShape.circle, color: Colors.red),
              //     child: Image.network(
              //       person.image
              //     )
              // ),
            ],
          )
        ],
      ),
    );
  }
}
