
import 'package:flutter/material.dart';
import 'package:tugas_1_pemmo_2009106050_riskykurniawan/models/Person.dart';
import 'package:tugas_1_pemmo_2009106050_riskykurniawan/screens/details/details_screen.dart';

import '../../../constants.dart';

class ItemCard extends StatelessWidget {
  final Person person;
  const ItemCard({
    Key? key,
    required this.person,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) {
            return DetailsScreen(person: person);
          }),
        );
      },
      child: Center(
        child: Card(
          elevation: 3,
          shadowColor: Color.fromARGB(255, 25, 56, 27),
          margin: EdgeInsets.all(10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const SizedBox(
                height: 12,
              ),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    person.image,
                  ),
                  radius: 45.0,
                ),
              const SizedBox(
                height: 12,
              ),
              ListTile(
                leading: const Icon(Icons.mosque),
                title: Text(person.name),
                subtitle: Text(person.descriptionThumbnail),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  const SizedBox(width: 8),
                  TextButton(
                    child: const Text('Lihat Selengkapnya'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) {
                          return DetailsScreen(person: person);
                        }),
                      );
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
