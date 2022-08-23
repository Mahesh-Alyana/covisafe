import 'package:covisafe/common_user/testslot.dart';
import 'package:covisafe/widgets/navigationbar.dart';
import 'package:flutter/material.dart';

class SymptomsCheck extends StatefulWidget {
  const SymptomsCheck({Key? key}) : super(key: key);

  @override
  _SymptomsCheckState createState() => _SymptomsCheckState();
}

class _SymptomsCheckState extends State<SymptomsCheck> {
  int count = 0;
  bool _1st = false;
  bool _2nd = false;
  bool _3rd = false;
  bool _4th = false;
  bool _5th = false;
  bool _6th = false;
  bool _7th = false;
  bool _8th = false;
  bool _9th = false;
  bool _10th = false;
  bool _11th = false;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
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
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Self assessment',
                style: TextStyle(
                  fontFamily: 'poppins',
                  fontSize: width * 0.06,
                  fontWeight:
                      FontWeight.lerp(FontWeight.w900, FontWeight.w900, 0.5),
                ),
              ),
            ),
            Container(
              width: 370,
              height: 266,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        width: 361,
                        height: 85,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Are you currently experiencing any one of the following symptoms?",
                            style: TextStyle(
                                fontFamily: 'poppins_light',
                                fontSize: width * 0.045),
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x26000000),
                              blurRadius: 15,
                              offset: Offset(0, 4),
                            ),
                          ],
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 143,
                    top: 116,
                    child: Container(
                      width: 134,
                      height: 30,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _1st = !_1st;
                                if (_1st) {
                                  count++;
                                } else {
                                  count--;
                                }
                              });
                            },
                            child: Container(
                              width: 134,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: _1st
                                    ? Color(0xff18A0FB)
                                    : Color(0xffc4c4c4),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 4,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Loss of smell",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 251,
                    top: 156,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _2nd = !_2nd;
                        });
                        if (_2nd) {
                          count++;
                        } else {
                          count--;
                        }
                      },
                      child: Container(
                        width: 119,
                        height: 30,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 119,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: _2nd
                                    ? Color(0xff18A0FB)
                                    : Color(0xffc4c4c4),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 4,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "runny nose",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 123,
                    top: 156,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _3rd = !_3rd;
                        });
                        if (_3rd) {
                          count++;
                        } else {
                          count--;
                        }
                      },
                      child: Container(
                        width: 118,
                        height: 30,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 118,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: _3rd
                                    ? Color(0xff18A0FB)
                                    : Color(0xffc4c4c4),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 4,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "sore throat",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 72,
                    top: 196,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _4th = !_4th;
                        });
                        if (_4th) {
                          count++;
                        } else {
                          count--;
                        }
                      },
                      child: Container(
                        width: 107,
                        height: 30,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 107,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: _4th
                                    ? Color(0xff18A0FB)
                                    : Color(0xffc4c4c4),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 4,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "diarrhoea",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 8,
                    top: 116,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _5th = !_5th;
                        });
                        if (_5th) {
                          count++;
                        } else {
                          count--;
                        }
                      },
                      child: Container(
                        width: 125,
                        height: 30,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 125,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: _5th
                                    ? Color(0xff18A0FB)
                                    : Color(0xffc4c4c4),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 4,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Body aches",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 35,
                    top: 156,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _6th = !_6th;
                        });
                        if (_6th) {
                          count++;
                        } else {
                          count--;
                        }
                      },
                      child: Container(
                        width: 78,
                        height: 30,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 78,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: _6th
                                    ? Color(0xff18A0FB)
                                    : Color(0xffc4c4c4),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 4,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "sneeze",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 189,
                    top: 196,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _7th = !_7th;
                        });
                        if (_7th) {
                          count++;
                        } else {
                          count--;
                        }
                      },
                      child: Container(
                        width: 59,
                        height: 30,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 59,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: _7th
                                    ? Color(0xff18A0FB)
                                    : Color(0xffc4c4c4),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 4,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "fever",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _8th = !_8th;
                          });
                          if (_8th) {
                            count++;
                          } else {
                            count--;
                          }
                        },
                        child: Container(
                          width: 83,
                          height: 30,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 83,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: _8th
                                      ? Color(0xff18A0FB)
                                      : Color(0xffc4c4c4),
                                ),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4,
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Fatigue",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 91,
                    top: 236,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _9th = !_9th;
                        });
                        if (_9th) {
                          count++;
                        } else {
                          count--;
                        }
                      },
                      child: Container(
                        width: 159,
                        height: 30,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 159,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: _9th
                                    ? Color(0xff18A0FB)
                                    : Color(0xffc4c4c4),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 4,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Breathlessness",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 258,
                    top: 196,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _10th = !_10th;
                        });
                        if (_10th) {
                          count++;
                        } else {
                          count--;
                        }
                      },
                      child: Container(
                        width: 112,
                        height: 30,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 112,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: _10th
                                    ? Color(0xff18A0FB)
                                    : Color(0xffc4c4c4),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 4,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "headache",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _11th = !_11th;
                          });
                          if (_11th) {
                            count++;
                          } else {
                            count--;
                          }
                        },
                        child: Container(
                          width: 110,
                          height: 30,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 110,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: _11th
                                      ? Color(0xff18A0FB)
                                      : Color(0xffc4c4c4),
                                ),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4,
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "dry cough",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.2,
            ),
            MaterialButton(
                onPressed: () {
                  if (count >= 6) {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => TakeTest()),
                        (route) => false);
                  } else if (count >= 3) {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => Doctor()),
                        (route) => false);
                  } else {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => SafeScreen()),
                        (route) => false);
                  }
                },
                child: Container(
                  height: height * 0.05,
                  width: width * 0.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xff18A0FB),
                  ),
                  child: Center(
                    child: Text(
                      "Submit",
                      style: TextStyle(
                        fontFamily: 'poppins_light',
                        fontSize: width * 0.04,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )),
            BottomNavigation(active: 'sa')
          ],
        ),
      ),
    );
  }
}

class SafeScreen extends StatelessWidget {
  const SafeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
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
                ],
              ),
            ),
            SizedBox(
              height: height * 0.1,
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset('assets/images/safe.png'),
            ),
            SizedBox(
              height: height * 0.2,
            ),
            Text(
              "You are absolutely fine",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontFamily: "poppins",
                fontWeight: FontWeight.w800,
              ),
            ),
            BottomNavigation(active: '')
          ],
        ),
      ),
    );
  }
}

class Doctor extends StatelessWidget {
  const Doctor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
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
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset('assets/images/doctor.png'),
            ),
            SizedBox(
              height: height * 0.1,
            ),
            Text(
              "better to consult a \ndoctor",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontFamily: "poppins",
                fontWeight: FontWeight.w800,
              ),
            ),
            BottomNavigation(active: '')
          ],
        ),
      ),
    );
  }
}

class TakeTest extends StatelessWidget {
  const TakeTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
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
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset('assets/images/test.png'),
            ),
            SizedBox(
              height: height * 0.1,
            ),
            Text(
              "stay isolated and take a covid test",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontFamily: "poppins",
                fontWeight: FontWeight.w800,
              ),
            ),
            MaterialButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => TestSlots()),
                      (route) => false);
                },
                child: Container(
                  height: height * 0.05,
                  width: width * 0.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xff18A0FB),
                  ),
                  child: Center(
                    child: Text(
                      "Book a test",
                      style: TextStyle(
                        fontFamily: 'poppins_light',
                        fontSize: width * 0.04,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )),
            BottomNavigation(active: '')
          ],
        ),
      ),
    );
  }
}
