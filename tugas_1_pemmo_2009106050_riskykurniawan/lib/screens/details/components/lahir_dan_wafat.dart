import 'package:flutter/material.dart';
import 'package:tugas_1_pemmo_2009106050_riskykurniawan/models/Person.dart';

import '../../../constants.dart';

class LahirDanWafat extends StatelessWidget {
  const LahirDanWafat({
    Key? key,
    required this.person,
  }) : super(key: key);

  final Person person;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: RichText(
            text: TextSpan(
              style: const TextStyle(color: kTextColor),
              children: [
                const TextSpan(text: "Lahir\n"),
                TextSpan(
                  text: "${person.lahir}",
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  )
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: const TextStyle(color: kTextColor),
              children: [
                const TextSpan(text: "Wafat\n"),
                TextSpan(
                  text: "${person.wafat}",
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  )
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDot({
    Key? key,
    required this.color,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: kDefaultPaddin / 4,
        right: kDefaultPaddin / 2,
      ),
      padding: const EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? color : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
