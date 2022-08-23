import 'package:covisafe/widgets/navigationbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TraceScreen extends StatefulWidget {
  const TraceScreen({Key? key}) : super(key: key);

  @override
  _TraceScreenState createState() => _TraceScreenState();
}

class _TraceScreenState extends State<TraceScreen> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(17.599813, 78.417737);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return MaterialApp(
      home: Scaffold(
        endDrawer: Drawer(),
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
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
              ),
              Center(
                child: Container(
                  height: height * 0.55,
                  width: width * 0.9,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 2, color: Colors.white)),
                  child: Center(
                    child: WebView(
                      initialUrl: Uri.dataFromString(
                        '<iframe style="width:100%"; width="560" height="${height * 2}" src="https://coronavirus.app/map?embed=true" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>',
                        mimeType: 'text/html',
                      ).toString(),
                      javascriptMode: JavascriptMode.unrestricted,
                    ),
                  ),
                ),
              ),
              BottomNavigation(
                active: 'trace',
              )
            ],
          ),
        ),
        // body: GoogleMap(
        //   onMapCreated: _onMapCreated,
        //   initialCameraPosition: CameraPosition(
        //     target: _center,
        //     zoom: 100.0,
        //   ),
        // ),
      ),
    );
  }
}
