import 'package:covisafe/widgets/navigationbar.dart';
import 'package:flutter/material.dart';

class NearBySupplies extends StatefulWidget {
  const NearBySupplies({Key? key}) : super(key: key);

  @override
  _NearBySuppliesState createState() => _NearBySuppliesState();
}

class _NearBySuppliesState extends State<NearBySupplies> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  int count1 = 0;
  int count2 = 0;
  int count3 = 0;
  int count4 = 0;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: scaffoldKey,
      body: ListView(
        children: [
          Container(
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
                  height: height * 0.1,
                ),
                Container(
                  height: height * 0.05,
                  width: width * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 8, right: 8),
                    child: TextFormField(
                      decoration: InputDecoration(hintText: 'City located'),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.1,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Image.asset('assets/images/bed.png'),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Beds",
                                style: TextStyle(
                                    fontSize: width * 0.04,
                                    fontFamily: 'poppins_light'),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Check Availability",
                            style: TextStyle(
                                fontSize: width * 0.06,
                                fontFamily: 'poppins_light'),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              count1--;
                            });
                          },
                          child: Container(
                            width: width * 0.1,
                            child: Icon(Icons.arrow_back_ios),
                          ),
                        ),
                        Text("$count1"),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              count1++;
                            });
                          },
                          child: Container(
                            width: width * 0.1,
                            child: Icon(Icons.arrow_forward_ios),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Image.asset('assets/images/vaccine.png'),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Vaccine",
                                style: TextStyle(
                                    fontSize: width * 0.04,
                                    fontFamily: 'poppins_light'),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Check Availability",
                            style: TextStyle(
                                fontSize: width * 0.06,
                                fontFamily: 'poppins_light'),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              count2--;
                            });
                          },
                          child: Container(
                            width: width * 0.1,
                            child: Icon(Icons.arrow_back_ios),
                          ),
                        ),
                        Text("$count2"),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              count2++;
                            });
                          },
                          child: Container(
                            width: width * 0.1,
                            child: Icon(Icons.arrow_forward_ios),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Image.asset('assets/images/blood.png'),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Blood",
                                style: TextStyle(
                                    fontSize: width * 0.04,
                                    fontFamily: 'poppins_light'),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Check Availability",
                            style: TextStyle(
                                fontSize: width * 0.06,
                                fontFamily: 'poppins_light'),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              count3--;
                            });
                          },
                          child: Container(
                            width: width * 0.1,
                            child: Icon(Icons.arrow_back_ios),
                          ),
                        ),
                        Text("$count3"),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              count3++;
                            });
                          },
                          child: Container(
                            width: width * 0.1,
                            child: Icon(Icons.arrow_forward_ios),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Image.asset('assets/images/oxygen.png'),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Oxygen",
                                style: TextStyle(
                                    fontSize: width * 0.04,
                                    fontFamily: 'poppins_light'),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Check Availability",
                            style: TextStyle(
                                fontSize: width * 0.06,
                                fontFamily: 'poppins_light'),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              count4--;
                            });
                          },
                          child: Container(
                            width: width * 0.1,
                            child: Icon(Icons.arrow_back_ios),
                          ),
                        ),
                        Text("$count4"),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              count4++;
                            });
                          },
                          child: Container(
                            width: width * 0.1,
                            child: Icon(Icons.arrow_forward_ios),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                BottomNavigation(
                  active: '',
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
