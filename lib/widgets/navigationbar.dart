import 'package:covisafe/common_user/home_screen.dart';
import 'package:covisafe/common_user/symptomscheck.dart';
import 'package:covisafe/common_user/trace.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  BottomNavigation({Key? key, required this.active}) : super(key: key);
  String active;

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  void initState() {
    if (widget.active == 'home') {
      ishome = true;
      istrace = false;
      issearch = false;
    } else if (widget.active == 'trace') {
      istrace = true;
      ishome = false;
      issearch = false;
    } else if (widget.active == 'sa') {
      istrace = false;
      ishome = false;
      issearch = true;
    } else {
      istrace = false;
      ishome = false;
      issearch = false;
    }
    super.initState();
  }

  bool istrace = false;
  bool ishome = false;
  bool issearch = false;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Expanded(
        child: Align(
            alignment: FractionalOffset.bottomCenter,
            child: Container(
                height: height * 0.1,
                width: width,
                decoration:
                    const BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 5,
                  )
                ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MaterialButton(
                      onPressed: () {
                        if (!issearch) {
                          setState(() {
                            issearch = !issearch;
                            ishome = false;
                            istrace = false;
                          });
                        }
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SymptomsCheck()),
                            (route) => true);
                      },
                      child: Container(
                        height: height * 0.2,
                        width: width * 0.22,
                        decoration: BoxDecoration(
                            color: issearch
                                ? const Color(0xff18A0FB)
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(100)),
                        child: Icon(
                          Icons.sticky_note_2_outlined,
                          size: width * 0.1,
                        ),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        if (!ishome) {
                          setState(() {
                            ishome = !ishome;
                            issearch = false;
                            istrace = false;
                          });
                        }
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()),
                            (route) => true);
                      },
                      child: Container(
                        height: height * 0.2,
                        width: width * 0.22,
                        decoration: BoxDecoration(
                            color:
                                ishome ? Color(0xff18A0FB) : Colors.transparent,
                            borderRadius: BorderRadius.circular(100)),
                        child: Icon(
                          Icons.home_outlined,
                          size: width * 0.1,
                        ),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        if (!istrace) {
                          setState(() {
                            istrace = !istrace;
                            ishome = false;
                            issearch = false;
                          });
                        }
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TraceScreen()),
                            (route) => true);
                      },
                      child: Container(
                        height: height * 0.2,
                        width: width * 0.22,
                        decoration: BoxDecoration(
                            color: istrace
                                ? Color(0xff18A0FB)
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(100)),
                        child: Icon(
                          Icons.location_searching_outlined,
                          size: width * 0.1,
                        ),
                      ),
                    ),
                  ],
                ))));
  }
}
