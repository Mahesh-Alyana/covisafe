import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class OTPverification extends StatefulWidget {
  const OTPverification({Key? key}) : super(key: key);

  @override
  _OTPverificationState createState() => _OTPverificationState();
}

class _OTPverificationState extends State<OTPverification> {
  TextEditingController email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        color: Colors.white,
        padding: const EdgeInsets.only(
          left: 13,
          right: 10,
          top: 55,
        ),
        child: Column(
          children: [
            Row(
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
                    fontSize: width * 0.08,
                    fontWeight:
                        FontWeight.lerp(FontWeight.w900, FontWeight.w900, 0.5),
                  ),
                )
              ],
            ),
            SizedBox(height: 68),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Verify",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: width * 0.075,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            SizedBox(height: height * 0.07),
            Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                width: width * 0.9,
                child: Text(
                  "We will send an OTP to your phone",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: width * 0.04,
                    fontFamily: "Poppins_light",
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(height: height * 0.07),
            SizedBox(
              width: width * 0.9,
              child: TextFormField(
                  controller: email,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.mail_outline,
                        color: Colors.black,
                      ),
                      fillColor: Colors.black,
                      focusColor: Colors.black,
                      hoverColor: Colors.black,
                      hintText: 'Enter OTP',
                      hintStyle: TextStyle(
                        fontFamily: 'poppins_light',
                        color: Colors.black,
                      )),
                  validator: MultiValidator([
                    RequiredValidator(errorText: "This feild is required"),
                  ])),
            ),
            SizedBox(height: height * 0.1),
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
                      "Enter",
                      style: TextStyle(
                        fontFamily: 'poppins_light',
                        fontSize: width * 0.04,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
