import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/NiMo-/AndroidStudioProjects/jameia_apps/lib/shared_ui/app_bar/shared_appBar.dart';

import '../../constants.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SharedAppBar(title: 'تسجيل الدخول',subtitle: 'أهلا بعودتك'),
          Expanded(
              child: Container(
            color: kBackgroundColor,
          )),
        ],
      ),
    );
  }
}
