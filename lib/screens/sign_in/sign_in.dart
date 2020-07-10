import 'package:flutter/material.dart';
import 'package:jameiaapps/constants.dart';
import 'package:jameiaapps/shared_ui/app_bar/shared_appBar.dart';
import 'package:jameiaapps/shared_ui/button/gradient_button.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SharedAppBar(title: 'التسجيل', subtitle: 'أنشئ حسابك الأن'),
          Expanded(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: kBackgroundColor,
              child: Padding(
                padding: const EdgeInsets.all(kDefaultPadding),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                     Align(
                       alignment: Alignment.bottomCenter,
                       child: Padding(
                        padding: EdgeInsets.only(bottom: kDefaultPadding),
                        child: gradientButton(context, 'تسجيل'),
                    ),
                     ),
                  ],
                ),
              ),),
          ),
        ],
      ),
    );
  }
}
