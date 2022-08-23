import 'package:covisafe/widgets/navigationbar.dart';
import 'package:flutter/material.dart';

class IsolatedView extends StatefulWidget {
  const IsolatedView({Key? key}) : super(key: key);

  @override
  _IsolatedViewState createState() => _IsolatedViewState();
}

class _IsolatedViewState extends State<IsolatedView> {
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
              height: height * 0.05,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: height * 0.05,
                width: width * 0.9,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(color: Colors.black12, blurRadius: 2)
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "Stay isolated to minimize the risk of covid",
                    style: TextStyle(
                        fontFamily: 'poppins_light', fontSize: width * 0.04),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: height * 0.05,
                width: width * 0.9,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(color: Colors.black12, blurRadius: 2)
                  ],
                  color: Color(0xff50AD76),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          "See recommended foods",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'poppins_light',
                              fontSize: width * 0.035),
                        ),
                        Padding(padding: EdgeInsets.all(10)),
                        Icon(
                          Icons.fastfood_outlined,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: height * 0.05,
                width: width * 0.9,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(color: Colors.black12, blurRadius: 2)
                  ],
                  color: Color(0xff50AD76),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.fastfood_outlined,
                          color: Colors.white,
                        ),
                        Padding(padding: EdgeInsets.all(10)),
                        Text(
                          "Set  your food preferences ",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'poppins_light',
                              fontSize: width * 0.035),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: height * 0.05,
                width: width * 0.9,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(color: Colors.black12, blurRadius: 2)
                  ],
                  color: const Color(0xff50AD76),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          "Don't forget to take your medicines on time",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'poppins_light',
                              fontSize: width * 0.032),
                        ),
                        const Padding(padding: EdgeInsets.all(10)),
                        const Icon(
                          Icons.notifications_outlined,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: height * 0.05,
                width: width * 0.9,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(color: Colors.black12, blurRadius: 2)
                  ],
                  color: Color(0xff50AD76),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          "Set a schedule to remind you on your medication",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'poppins_light',
                              fontSize: width * 0.032),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Container(
              width: width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Image.asset('assets/images/hand_wash.png'),
                      Text("Wash hands",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'poppins_light',
                              fontSize: width * 0.04))
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset('assets/images/clean.png'),
                      Text("Disinfect your \nsurroundings",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'poppins_light',
                              fontSize: width * 0.04))
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset('assets/images/mask.png'),
                      Text("Wear mask",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'poppins_light',
                              fontSize: width * 0.04))
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.08,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: height * 0.05,
                width: width * 0.9,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(color: Colors.black12, blurRadius: 2)
                  ],
                  color: Color(0xffC42B26),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.add_alert_outlined,
                          color: Colors.white,
                        ),
                        Padding(padding: EdgeInsets.all(10)),
                        Text(
                          "Send an alert to sos contact",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'poppins_light',
                              fontSize: width * 0.032),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            BottomNavigation(
              active: '',
            ),
          ],
        ),
      ),
    );
  }
}
