import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jameiaapps/shared_ui/app_bar/shared_appBar.dart';
import 'package:jameiaapps/shared_ui/button/gradient_button.dart';
import 'package:jameiaapps/utilities/constants.dart';

class MobileVerification extends StatefulWidget {
  @override
  _MobileVerificationState createState() => _MobileVerificationState();
}

class _MobileVerificationState extends State<MobileVerification> {
  TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SharedAppBar(title: 'التحقق من الجوال', subtitle: ''),
          Expanded(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: kBackgroundColor,
              child: Padding(
                padding: const EdgeInsets.all(kDefaultPadding),
                child: Align(
                  alignment: Alignment.center,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        _columnTextVerificationMobile(context),
                        Column(
                          children: <Widget>[
                            Text(
                              'أدخل رقم الجوال ',
                              style: TextStyle(fontSize: 12),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: kDefaultPadding * 5),
                              child: TextField(
                                keyboardType: TextInputType.phone,
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  enabledBorder:
                                  UnderlineInputBorder(borderSide: BorderSide(color: Color(0XFF707070))),
                                ),
                                controller: _controller,
                                onSubmitted: (String value) {},
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: kDefaultPadding * 4),
                          child: gradientButton(context, 'إرسال', () {}),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _columnTextVerificationMobile(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
      child: Column(
        children: <Widget>[
          Text('التحقق من رقم الجوال',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          SizedBox(height: kDefaultPadding / 2),
          Text(
            'سيتم ارسال رسالة تحتوي على كود',
            style: TextStyle(fontSize: 12, color: Color(0XFF9B9B9B)),
          ),
          Text(
            ' الى رقم الجوال المدخل',
            style: TextStyle(fontSize: 12, color: Color(0XFF9B9B9B)),
          ),
        ],
      ),
    );
  }
}
