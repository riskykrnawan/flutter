import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text('Masuk'),
          onPressed: () {
            Navigator.pushNamed(context, '/one');
          }
        ),
      ),
    );
  }
}