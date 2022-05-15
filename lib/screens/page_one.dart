import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/my-bg.jpg"),
                fit: BoxFit.cover,
              ),
            ),
              child: SizedBox(
                width: double.infinity,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      SizedBox(
                        height: 80.0,
                      ),
                      CircleAvatar(
                        radius: 65.0,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/profile.jpg'
                        ),
                        radius: 63.0,
                      ),
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
                      Text(
                        "2009106050",
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                    ],
                  ),
                ),
              )
            ),
            const SizedBox(
              height: 60,
            ),
            Container(
              width: 170,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)
                  ),
                  primary: Colors.blueAccent,
                ), onPressed: () { Navigator.pushNamed(context, '/two'); },
                child:  Container(
                    height: 25,
                    alignment: Alignment.center,
                    child: const Text("Man"),
                  ),
                )
            ),
            Container(
              width: 170,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)
                  ),
                  primary: Colors.redAccent,
                ), onPressed: () { Navigator.pushNamed(context, '/three'); },
                child:  Container(
                    height: 25,
                    alignment: Alignment.center,
                    child: const Text("Woman"),
                  ),
                )
            ),
            Container(
              width: 170,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)
                  ),
                  primary: Colors.green,
                ), onPressed: () { Navigator.pushNamed(context, '/four'); },
                child:  Container(
                    height: 25,
                    alignment: Alignment.center,
                    child: const Text("Plant"),
                  ),
                )
            ),
            Container(
              width: 170,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)
                  ),
                  primary: Colors.deepOrange,
                ), onPressed: () { Navigator.pushNamed(context, '/five'); },
                child:  Container(
                    height: 25,
                    alignment: Alignment.center,
                    child: const Text("Animal"),
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromARGB(255, 0, 9, 66),
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: const <Widget>[
        SizedBox(width: 10)
      ],
    );
  }
}
