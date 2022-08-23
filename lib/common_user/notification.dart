import 'package:covisafe/widgets/navigationbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
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
              Text(
                "Notifications",
                style:
                    TextStyle(fontFamily: 'poppins', fontSize: width * 0.055),
              ),
              Container(
                height: height * 0.8,
                width: width,
                child: ListView.builder(itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: height * 0.1,
                        width: width * 0.9,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(color: Colors.black38, blurRadius: 5)
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Center(
                            child: Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Augue proin rutrum ut convallis sagittis ipsum. "),
                          ),
                        )),
                  );
                }),
              ),
              BottomNavigation(
                active: '',
              )
            ],
          )),
    );
  }
}
