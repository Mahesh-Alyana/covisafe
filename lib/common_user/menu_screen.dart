import 'package:covisafe/common_user/faq_screen.dart';
import 'package:covisafe/common_user/helpline.dart';
import 'package:covisafe/common_user/isolated_view.dart';
import 'package:covisafe/common_user/nearby_supplies.dart';
import 'package:covisafe/common_user/testslot.dart';
import 'package:covisafe/common_user/vaccineslot.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Color(0xff18A0FB),
        body: Container(
          width: width,
          height: height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: FractionalOffset.topRight,
                  child: SizedBox(
                    height: height * 0.05,
                    child: Row(
                      children: const [
                        Icon(
                          Icons.settings_outlined,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.person_outlined,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.1),
              GestureDetector(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => TestSlots()),
                      (route) => true);
                },
                child: Text(
                  "Test",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: width * 0.065,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                width: width * 0.5,
                child: const Divider(
                  color: Colors.white,
                  thickness: 1,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => VaccineSlots()),
                      (route) => true);
                },
                child: Text(
                  "Vaccination",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: width * 0.065,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                width: width * 0.5,
                child: const Divider(
                  color: Colors.white,
                  thickness: 1,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => IsolatedView()),
                      (route) => true);
                },
                child: Text(
                  "Isolate mode",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: width * 0.065,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                width: width * 0.5,
                child: const Divider(
                  color: Colors.white,
                  thickness: 1,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => NearBySupplies()),
                      (route) => true);
                },
                child: Text(
                  "Check availability",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: width * 0.065,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                width: width * 0.5,
                child: const Divider(
                  color: Colors.white,
                  thickness: 1,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => FAQScreen()),
                      (route) => true);
                },
                child: Text(
                  "FAQs",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: width * 0.065,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                width: width * 0.5,
                child: const Divider(
                  color: Colors.white,
                  thickness: 1,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => HelpLineScreen()),
                      (route) => true);
                },
                child: Text(
                  "Help line",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: width * 0.065,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
