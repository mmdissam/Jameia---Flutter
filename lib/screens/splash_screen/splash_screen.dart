import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jameiaapps/constants.dart';
import 'package:jameiaapps/screens/login/login.dart';
import 'package:jameiaapps/screens/on_boarding/on_boarding.dart';

import 'componants/circle_purple.dart';
import 'componants/circle_transparent.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<bool> _mockCheckForSession() async {
    await Future.delayed(Duration(seconds: 3), () {});
    return false;
  }

  void _navigateToOnBoarding() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => OnBoarding()));
  }

  void _navigateToLogin() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => Login()));
  }

  @override
  void initState() {
    super.initState();
    // To hide Android StatusBar
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    _mockCheckForSession().then((status) {
      if (status) {
        _navigateToOnBoarding();
      } else {
        _navigateToLogin();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: kGradient,
            ),
          ),
          CustomPaint(
            painter: CircleTransparent(380),
            child: Container(),
          ),
          CustomPaint(
            painter: CirclePurple(330),
            child: Container(),
          ),
          CustomPaint(
            painter: CircleTransparent(310),
            child: Container(),
          ),
          CustomPaint(
            painter: CirclePurple(270),
            child: Container(),
          ),
          CustomPaint(
            painter: CircleTransparent(240),
            child: Container(),
          ),
          CustomPaint(
            painter: CirclePurple(200),
            child: Container(),
          ),
          CustomPaint(
            painter: CircleTransparent(170),
            child: Container(),
          ),
          CustomPaint(
            painter: CirclePurple(130),
            child: Container(),
          ),
          CustomPaint(
            painter: CircleTransparent(100),
            child: Container(),
          ),
          CustomPaint(
            painter: CirclePurple(70),
            child: Container(),
          ),
          _cashText(context),
        ],
      ),
    );
  }

  Widget _cashText(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          'Cash',
          style: TextStyle(
            color: Colors.white,
            fontSize: MediaQuery.of(context).size.width * 0.15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
