import 'package:covisafe/widgets/dateday.dart';
import 'package:covisafe/widgets/navigationbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class VaccineSlots extends StatefulWidget {
  const VaccineSlots({Key? key}) : super(key: key);

  @override
  _VaccineSlotsState createState() => _VaccineSlotsState();
}

class _VaccineSlotsState extends State<VaccineSlots> {
  String dropdownValue = 'Covishield';
  List<String> PredictorName = [
    'Covishield',
    'Covaxin',
  ];
  int i = 0;

  bool tap = false;
  bool isFirst = true;
  bool isSecond = false;
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      key: scaffoldKey,
      endDrawer: const Drawer(),
      body: Column(
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
                    fontWeight:
                        FontWeight.lerp(FontWeight.w900, FontWeight.w900, 0.5),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.05,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text('Book your vaccination slot',
                  style: TextStyle(
                      fontFamily: 'poppins',
                      fontSize: width * 0.065,
                      fontWeight: FontWeight.w900)),
            ),
          ),
          SizedBox(
            height: height * 0.05,
          ),
          SizedBox(
            width: width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    if (isFirst == false) {
                      setState(() {
                        isFirst = true;
                        isSecond = false;
                      });
                    }
                  },
                  child: Column(
                    children: [
                      Text(
                        "1st dose",
                        style: TextStyle(
                            fontFamily: 'nirmat',
                            fontSize: isSecond ? width * 0.06 : width * 0.055,
                            fontWeight:
                                isFirst ? FontWeight.w900 : FontWeight.w400),
                      ),
                      isFirst
                          ? Container(
                              width: 158.50,
                              height: 1.50,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xff18a0fb),
                                  width: 0.50,
                                ),
                              ),
                            )
                          : Container(),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (isSecond == false) {
                      setState(() {
                        isFirst = false;
                        isSecond = true;
                      });
                    }
                  },
                  child: Column(
                    children: [
                      Text(
                        "2nd dose",
                        style: TextStyle(
                          color: const Color(0xff242525),
                          fontSize: isSecond ? width * 0.06 : width * 0.055,
                          fontFamily: "nirmat",
                          fontWeight:
                              isSecond ? FontWeight.w900 : FontWeight.w400,
                        ),
                      ),
                      isSecond
                          ? Container(
                              width: 158.50,
                              height: 1.50,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xff18a0fb),
                                  width: 0.50,
                                ),
                              ),
                            )
                          : Container(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          SizedBox(
            height: height * 0.15,
            width: width,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    width: height * 0.14,
                    child: ListTile(
                        onTap: () {
                          setState(() {
                            tap = !tap;
                          });
                        },
                        title: Container(
                          height: height * 0.1,
                          width: height * 0.1,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: tap
                                ? const Color(0xff18A0FB)
                                : const Color(0xff38354b),
                          ),
                          padding: const EdgeInsets.only(
                            top: 7,
                            bottom: 6,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Text(
                                "20 Nov\nWED",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xd8ffffff),
                                ),
                              ),
                            ],
                          ),
                        )),
                  );
                }),
          ),
          Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Select Vaccine",
                  style: TextStyle(
                    color: Color(0x99000000),
                    fontSize: width * 0.04,
                    letterSpacing: 0.24,
                  ),
                ),
                SizedBox(height: 3.67),
                DropdownButton<String>(
                  value: dropdownValue,
                  elevation: 16,
                  style: TextStyle(color: Colors.black, fontSize: 18),
                  onChanged: (String? data) {
                    setState(() {
                      dropdownValue = data!;
                    });
                  },
                  items: PredictorName.map<DropdownMenuItem<String>>(
                      (String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                SizedBox(height: 3.67),
                Container(
                  width: 342.30,
                  height: 0.30,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xff282633),
                      width: 0.70,
                    ),
                  ),
                ),
                SizedBox(height: height * 0.03),
                Text(
                  "Centre 1",
                  style: TextStyle(
                    color: Color(0xd8000000),
                    fontSize: width * 0.04,
                    fontFamily: "niramit",
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: width * 0.9,
            height: height * 0.3,
            // color: Colors.black,
            child: GridView.count(
              // physics: NeverScrollableScrollPhysics(),
              childAspectRatio: 2,
              crossAxisCount: 3,
              children: List.generate(12, (index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: width * 0.24,
                    height: height * 0.05,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: const Color(0xff38354b),
                    ),
                    child: const Center(
                      child: Text(
                        "10:00-11:00\n9 slots available",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0x99ffffff),
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
          MaterialButton(
              onPressed: () {},
              child: Container(
                height: height * 0.05,
                width: width * 0.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xff18A0FB),
                ),
                child: Center(
                  child: Text(
                    "Book",
                    style: TextStyle(
                      fontFamily: 'poppins_light',
                      fontSize: width * 0.04,
                      color: Colors.white,
                    ),
                  ),
                ),
              )),
          BottomNavigation(
            active: '',
          ),
        ],
      ),
    );
  }
}
