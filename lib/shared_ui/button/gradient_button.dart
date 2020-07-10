import 'package:flutter/material.dart';
import 'package:jameiaapps/constants.dart';

Widget gradientButton(BuildContext context, String nameButton){
  return Container(
    decoration: BoxDecoration(
      gradient: kGradient,
      borderRadius: BorderRadius.all(Radius.circular(25)),
    ),
    child: MaterialButton(
      onPressed: () {},
      child: Text(
        nameButton,
        style: TextStyle(color: Colors.white,fontSize: 16),
      ),
      minWidth: double.infinity,
      height: 50,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25))),
    ),
  );
}