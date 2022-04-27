import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PageFour extends StatelessWidget {
  const PageFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/plant.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: MediaQuery.of(context).size.height*.7,
                    ),
                    Container(
                      width: 170,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)
                          ),
                          primary: Colors.blueAccent,
                        ), onPressed: () { Navigator.pop(context); },
                        child:  Container(
                            height: 25,
                            alignment: Alignment.center,
                            child: const Text("Back"),
                          ),
                        )
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height*.2,
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