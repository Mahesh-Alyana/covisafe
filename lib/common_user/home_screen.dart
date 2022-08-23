import 'package:covisafe/common_user/check_in_screen.dart';
import 'package:covisafe/common_user/menu_screen.dart';
import 'package:covisafe/common_user/nearby_supplies.dart';
import 'package:covisafe/common_user/symptomscheck.dart';
import 'package:covisafe/common_user/testslot.dart';
import 'package:covisafe/widgets/navigationbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'notification.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void initState() {
    getname();
    super.initState();
  }

  late var name;

  void getname() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    setState(() {
      name = sharedPreferences.getString('name');
    });
  }

  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      endDrawer: Drawer(
        child: MenuScreen(),
      ),
      key: scaffoldKey,
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
                    width: width * 0.25,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NotificationScreen()),
                          (route) => true);
                    },
                    icon: Icon(
                      Icons.notifications_outlined,
                      color: Color(0xff18A0FB),
                    ),
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
              height: height * 0.05,
            ),
            Container(
              height: height * 0.15,
              width: width,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: height * 0.12,
                        width: width * 0.9,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(color: Colors.black26, blurRadius: 10)
                          ],
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(right: 20.0),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "Hi, $name",
                              style: TextStyle(
                                  fontFamily: 'poppins', fontSize: 24),
                            ),
                          ),
                        )),
                  ),
                  Positioned(
                    left: width * 0.1,
                    child: Container(
                      height: height * 0.15,
                      width: height * 0.15,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 1,
                          color: Colors.white,
                        ),
                      ),
                      child: Image.asset('assets/images/profile.png'),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Container(
              height: height * 0.25,
              width: width * 0.9,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(color: Colors.black26, blurRadius: 10)
                ],
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      height: height * 0.2,
                      width: width * 0.2,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        children: [
                          Text(
                            "Confirmed",
                            style: TextStyle(
                                color: Colors.red,
                                fontFamily: 'poppins',
                                fontSize: width * 0.025),
                          ),
                          const Padding(padding: EdgeInsets.all(10)),
                          Text(
                            "+12,965",
                            style: TextStyle(
                                color: Colors.redAccent,
                                fontFamily: 'poppins',
                                fontSize: width * 0.02),
                          ),
                          Text(
                            "3,42,85,612",
                            style: TextStyle(
                                color: Colors.redAccent,
                                fontFamily: 'poppins',
                                fontSize: width * 0.03),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Image.asset(
                            'assets/images/red.png',
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: height * 0.2,
                    width: width * 0.2,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Active",
                          style: TextStyle(
                              color: Colors.blue,
                              fontFamily: 'poppins',
                              fontSize: width * 0.025),
                        ),
                        const Padding(padding: EdgeInsets.all(10)),
                        Text(
                          "+12,965",
                          style: TextStyle(
                              color: Colors.blue,
                              fontFamily: 'poppins',
                              fontSize: width * 0.02),
                        ),
                        Text(
                          "3,42,85,612",
                          style: TextStyle(
                              color: Colors.blue,
                              fontFamily: 'poppins',
                              fontSize: width * 0.03),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Image.asset(
                          'assets/images/blue.png',
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: height * 0.2,
                    width: width * 0.2,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Recovered",
                          style: TextStyle(
                              color: Colors.green,
                              fontFamily: 'poppins',
                              fontSize: width * 0.025),
                        ),
                        const Padding(padding: EdgeInsets.all(10)),
                        Text(
                          "+12,965",
                          style: TextStyle(
                              color: Colors.greenAccent,
                              fontFamily: 'poppins',
                              fontSize: width * 0.02),
                        ),
                        Text(
                          "3,42,85,612",
                          style: TextStyle(
                              color: Colors.green,
                              fontFamily: 'poppins',
                              fontSize: width * 0.03),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Image.asset(
                          'assets/images/green.png',
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: height * 0.2,
                    width: width * 0.2,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Deceased",
                          style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'poppins',
                              fontSize: width * 0.025),
                        ),
                        const Padding(padding: EdgeInsets.all(10)),
                        Text(
                          "+12,965",
                          style: TextStyle(
                              color: Colors.blueGrey,
                              fontFamily: 'poppins',
                              fontSize: width * 0.02),
                        ),
                        Text(
                          "3,42,85,612",
                          style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'poppins',
                              fontSize: width * 0.03),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Image.asset(
                          'assets/images/grey.png',
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.02),
            Container(
              height: height * 0.13,
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
                    padding: const EdgeInsets.only(left: 4.0, top: 2),
                    child: Row(
                      children: [
                        Text(
                          "Having symptoms related to covid",
                          style: TextStyle(
                              color: Colors.black, fontSize: width * 0.05),
                        ),
                        const Icon(Icons.info_outline),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SymptomsCheck()),
                            (route) => false);
                      },
                      child: Row(
                        children: [
                          Text(
                            "Take a self assessment test",
                            style: TextStyle(
                                color: Colors.blue, fontSize: width * 0.045),
                          ),
                          const Icon(
                            Icons.arrow_right_alt,
                            color: Colors.blue,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TestSlots()),
                            (route) => false);
                      },
                      child: Row(
                        children: [
                          Text(
                            "Book a covid test",
                            style: TextStyle(
                                color: Colors.blue, fontSize: width * 0.045),
                          ),
                          const Icon(
                            Icons.arrow_right_alt,
                            color: Colors.blue,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => NearBySupplies()),
                    (route) => false);
              },
              child: Container(
                width: width * 0.9,
                height: height * 0.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x26000000),
                      blurRadius: 15,
                      offset: Offset(0, 4),
                    ),
                  ],
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Check availability of these near your locality",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 48,
                          // height: 78,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 48,
                                height: 48,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Image.asset('assets/images/bed.png'),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Beds",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 61,
                          height: 78,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 48,
                                height: 48,
                                padding: const EdgeInsets.all(6),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 36,
                                      height: 36,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Image.asset(
                                          'assets/images/vaccine.png'),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10),
                              const Text(
                                "Vaccine",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 44,
                          height: 78,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 30,
                                height: 48,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Image.asset('assets/images/blood.png'),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                "Blood",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 60,
                          // height: 100,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 34,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Image.asset('assets/images/oxygen.png'),
                              ),
                              const SizedBox(height: 14),
                              const Text(
                                "Oxygen",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            BottomNavigation(
              active: 'home',
            ),
          ],
        ),
      ),
    );
  }
}
