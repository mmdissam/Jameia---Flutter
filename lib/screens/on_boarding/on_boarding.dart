import 'package:flutter/material.dart';
import 'package:jameiaapps/constants.dart';

class OnBoarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(child: Text('On Boarding'),),
    );
  }
}
