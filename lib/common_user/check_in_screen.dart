import 'package:covisafe/widgets/navigationbar.dart';
import 'package:flutter/material.dart';

class CheckInScreen extends StatelessWidget {
  const CheckInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        child: Column(
          children: [
            SizedBox(
              width: width,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: height * 0.003,
                      width: width * 0.07,
                      color: const Color(0xff18A0FB),
                    ),
                  ),
                  Text(
                    'Covisafe',
                    style: TextStyle(
                      fontFamily: 'poppins',
                      fontSize: width * 0.07,
                      fontWeight: FontWeight.lerp(
                          FontWeight.w900, FontWeight.w900, 0.5),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.15,
            ),
            Container(
              height: height * 0.4,
              width: width * 0.9,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(color: Colors.black38, blurRadius: 5),
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Augue proin rutrum ut convallis sagittis ipsum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Augue proin rutrum ut convallis sagittis ipsum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Augue proin rutrum ut convallis sagittis ipsum. ",
                  style: TextStyle(
                    fontFamily: 'poppins_light',
                    fontSize: width * 0.035,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Container(
                height: height * 0.07,
                width: width * 0.9,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black38, blurRadius: 5),
                    ]),
                child: Center(
                  child: Text(
                    "Take a test",
                    style: TextStyle(
                        fontFamily: 'poppins', fontSize: width * 0.055),
                  ),
                ),
              ),
            ),
            BottomNavigation(
              active: '',
            )
          ],
        ),
      ),
    );
  }
}
