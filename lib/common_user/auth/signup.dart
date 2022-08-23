import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:covisafe/common_user/auth/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController contact = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: height,
            width: width,
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.05,
                ),
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
                        fontWeight: FontWeight.lerp(
                            FontWeight.w900, FontWeight.w900, 0.5),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.2,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text('Sign Up',
                        style: TextStyle(
                            fontFamily: 'poppins',
                            fontSize: width * 0.08,
                            fontWeight: FontWeight.w900)),
                  ),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Form(
                    child: Column(
                  children: [
                    SizedBox(
                      width: width * 0.9,
                      child: TextFormField(
                          controller: email,
                          decoration: const InputDecoration(
                              prefixIcon: Icon(
                                Icons.person_outline,
                                color: Colors.black,
                              ),
                              fillColor: Colors.black,
                              focusColor: Colors.black,
                              hoverColor: Colors.black,
                              hintText: 'Username',
                              hintStyle: TextStyle(
                                fontFamily: 'poppins_light',
                                color: Colors.black,
                              )),
                          validator: MultiValidator([
                            RequiredValidator(
                                errorText: "This feild is required"),
                          ])),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    SizedBox(
                      width: width * 0.9,
                      child: TextFormField(
                          controller: contact,
                          decoration: const InputDecoration(
                              prefixIcon: Icon(
                                Icons.call_outlined,
                                color: Colors.black,
                              ),
                              fillColor: Colors.black,
                              focusColor: Colors.black,
                              hoverColor: Colors.black,
                              hintText: 'Contact',
                              hintStyle: TextStyle(
                                fontFamily: 'poppins_light',
                                color: Colors.black,
                              )),
                          validator: MultiValidator([
                            RequiredValidator(
                                errorText: "This feild is required"),
                          ])),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    SizedBox(
                      width: width * 0.9,
                      child: TextFormField(
                          controller: password,
                          decoration: const InputDecoration(
                              prefixIcon: Icon(
                                Icons.lock_outline,
                                color: Colors.black,
                              ),
                              fillColor: Colors.black,
                              focusColor: Colors.black,
                              hoverColor: Colors.black,
                              hintText: 'Password',
                              hintStyle: TextStyle(
                                fontFamily: 'poppins_light',
                                color: Colors.black,
                              )),
                          validator: MultiValidator([
                            RequiredValidator(
                                errorText: "This feild is required"),
                          ])),
                    )
                  ],
                )),
                SizedBox(
                  height: height * 0.03,
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                MaterialButton(
                    onPressed: () async {
                      Future<void> addUser() async {
                        FirebaseAuth firebaseAuth = FirebaseAuth.instance;
                        CollectionReference users =
                            FirebaseFirestore.instance.collection("profile");
                        var response =
                            await firebaseAuth.createUserWithEmailAndPassword(
                                email: email.text, password: password.text);
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()),
                            (route) => false);
                      }

                      addUser();
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
                          "Sign Up",
                          style: TextStyle(
                            fontFamily: 'poppins_light',
                            fontSize: width * 0.04,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )),
                Expanded(
                  child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25.0, vertical: 10),
                      child: Container(
                        width: width,
                        child: Row(
                          children: [
                            Text(
                              "Already have an account?",
                              style: TextStyle(
                                  fontFamily: 'poppins_light',
                                  fontSize: width * 0.045),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => LoginPage()),
                                    (route) => true);
                              },
                              child: Text(
                                " Login",
                                style: TextStyle(
                                  fontFamily: 'poppins_light',
                                  fontSize: width * 0.045,
                                  color: const Color(0xff18A0FB),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
