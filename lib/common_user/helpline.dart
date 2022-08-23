import 'package:flutter/material.dart';
import 'package:covisafe/widgets/navigationbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HelpLineScreen extends StatefulWidget {
  const HelpLineScreen({Key? key}) : super(key: key);

  @override
  State<HelpLineScreen> createState() => _HelpLineScreenState();
}

class _HelpLineScreenState extends State<HelpLineScreen> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: scaffoldKey,
      endDrawer: Drawer(),
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
                  SizedBox(
                    width: width * 0.35,
                  ),
                  IconButton(
                      onPressed: () {
                        scaffoldKey.currentState!.openEndDrawer();
                      },
                      icon: SvgPicture.asset(
                        'assets/images/menu.svg',
                        width: width * 0.08,
                      ))
                ],
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Container(
              height: height * 0.1,
              width: width * 0.9,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(color: Colors.black26, blurRadius: 10)
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Government hospital ",
                        style: TextStyle(
                            fontFamily: 'niramit',
                            fontSize: width * 0.055,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0, top: 8.0),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        "987654321",
                        style: TextStyle(
                            fontFamily: 'niramit',
                            fontSize: width * 0.055,
                            color: Colors.black38,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: height * 0.1,
              width: width * 0.9,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(color: Colors.black26, blurRadius: 10)
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Health ministry helpline ",
                        style: TextStyle(
                            fontFamily: 'niramit',
                            fontSize: width * 0.055,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0, top: 8.0),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        "987654321",
                        style: TextStyle(
                            fontFamily: 'niramit',
                            fontSize: width * 0.055,
                            color: Colors.black38,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: height * 0.1,
              width: width * 0.9,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(color: Colors.black26, blurRadius: 10)
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Covid 19 helpline ",
                        style: TextStyle(
                            fontFamily: 'niramit',
                            fontSize: width * 0.055,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0, top: 8.0),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        "987654321",
                        style: TextStyle(
                            fontFamily: 'niramit',
                            fontSize: width * 0.055,
                            color: Colors.black38,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: height * 0.1,
              width: width * 0.9,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(color: Colors.black26, blurRadius: 10)
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Mygov helpdesk",
                        style: TextStyle(
                            fontFamily: 'niramit',
                            fontSize: width * 0.055,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0, top: 8.0),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        "987654321",
                        style: TextStyle(
                            fontFamily: 'niramit',
                            fontSize: width * 0.055,
                            color: Colors.black38,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: height * 0.1,
              width: width * 0.9,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(color: Colors.black26, blurRadius: 10)
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Child helpline",
                        style: TextStyle(
                            fontFamily: 'niramit',
                            fontSize: width * 0.055,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0, top: 8.0),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        "987654321",
                        style: TextStyle(
                            fontFamily: 'niramit',
                            fontSize: width * 0.055,
                            color: Colors.black38,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: height * 0.1,
              width: width * 0.9,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(color: Colors.black26, blurRadius: 10)
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Senior citizens helpline ",
                        style: TextStyle(
                            fontFamily: 'niramit',
                            fontSize: width * 0.055,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0, top: 8.0),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        "987654321",
                        style: TextStyle(
                            fontFamily: 'niramit',
                            fontSize: width * 0.055,
                            color: Colors.black38,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: height * 0.1,
              width: width * 0.9,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(color: Colors.black26, blurRadius: 10)
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Government hospital ",
                        style: TextStyle(
                            fontFamily: 'niramit',
                            fontSize: width * 0.055,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0, top: 8.0),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        "987654321",
                        style: TextStyle(
                            fontFamily: 'niramit',
                            fontSize: width * 0.055,
                            color: Colors.black38,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
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
