import 'package:flutter/material.dart';
import 'package:tugas_1_pemmo_2009106050_riskykurniawan/constants.dart';
import 'package:tugas_1_pemmo_2009106050_riskykurniawan/models/Person.dart';
import 'package:tugas_1_pemmo_2009106050_riskykurniawan/screens/home/components/item_card.dart';
class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GridView.builder(
                itemCount: persons.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 0,
                  crossAxisSpacing: 0,
                  childAspectRatio: 1.2,
                ),
                itemBuilder: (context, index) => ItemCard(
                      person: persons[index],
                )),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        ),
      ],
    );
    // return 
  }
}