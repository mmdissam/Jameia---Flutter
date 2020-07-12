import 'package:flutter/material.dart';
import 'file:///C:/Users/NiMo-/AndroidStudioProjects/jameia_apps/lib/utilities/constants.dart';

Widget gradientButton(BuildContext context, String nameButton,Function onPress){
  return Container(
    decoration: BoxDecoration(
      gradient: kGradient,
      borderRadius: BorderRadius.all(Radius.circular(25)),
    ),
    child: MaterialButton(
      onPressed: onPress,
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