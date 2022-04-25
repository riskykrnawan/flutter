import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              color: Colors.orangeAccent,
            ),
            child: SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                        "https://lh3.googleusercontent.com/a-/AOh14GjrFgl_wF2k4nYQovAqsds8VDvJyiB8w3NIPdQg2g=s300-p-rw-no",
                      ),
                      radius: 50.0,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Risky Kurniawan",
                      style: TextStyle(
                        fontSize: 22.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ),
        ],
      ),
      ),
    );
  }
}

