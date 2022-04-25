
import 'package:flutter/material.dart';
import 'package:tugas_1_pemmo_2009106050_riskykurniawan/models/Story.dart';

import '../../../constants.dart';

class ItemCard extends StatelessWidget {
  final Story story;
  const ItemCard({
    Key? key,
    required this.story,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
      },
      child: Center(
        child: Card(
          elevation: 3,
          shadowColor: Color.fromARGB(255, 25, 56, 27),
          margin: EdgeInsets.all(10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                title: Text(story.name),
                subtitle: Text(story.descriptionThumbnail),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  const SizedBox(width: 8),
                  TextButton(
                    child: const Text('Lihat Selengkapnya'),
                    onPressed: () {
                    },
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}
