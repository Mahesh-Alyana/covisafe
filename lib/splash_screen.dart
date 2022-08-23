import 'dart:async';
import 'package:covisafe/common_user/home_screen.dart';
import 'package:flutter/material.dart';
import 'common_user/auth/login.dart';

String? finalToken;
// ignore: non_constant_identifier_names

// ignore: must_be_immutable
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 2),
      () => Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  finalToken == null ? const LoginPage() : HomeScreen()),
          (route) => false),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
