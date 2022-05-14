import 'package:flutter/material.dart';

Future<dynamic> MyAlert(BuildContext context, String text) {
  return showDialog(
    context: context,
    builder: (context) {
      return const AlertDialog(
        backgroundColor: Color.fromRGBO(130, 130, 168, 1),
      );
    }
  );
}