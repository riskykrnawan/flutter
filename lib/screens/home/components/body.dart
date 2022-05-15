import 'package:flutter/material.dart';
import 'package:posttest4_2009106050_riskykurniawan/constants.dart';
import 'package:posttest4_2009106050_riskykurniawan/models/Product.dart';
import 'package:posttest4_2009106050_riskykurniawan/screens/details/details_screen.dart';

import 'categories.dart';
import 'item_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        ),
        const Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GridView.builder(
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: kDefaultPaddin,
                  crossAxisSpacing: kDefaultPaddin,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) => ItemCard(
                      product: products[index],
                )),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        ),
      ],
    );
  }
}

