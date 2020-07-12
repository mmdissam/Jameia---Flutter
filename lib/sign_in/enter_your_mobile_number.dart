import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jameiaapps/shared_ui/app_bar/shared_appBar.dart';
import 'package:jameiaapps/shared_ui/button/gradient_button.dart';
import 'package:jameiaapps/sign_in/mobile_verification.dart';
import 'package:jameiaapps/utilities/constants.dart';

class EnterYourMobileNumber extends StatefulWidget {
  @override
  _EnterYourMobileNumberState createState() => _EnterYourMobileNumberState();
}

class _EnterYourMobileNumberState extends State<EnterYourMobileNumber> {
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
              height: double.infinity,
              color: kBackgroundColor,
              child: SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.75,
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _columnTextVerificationMobile(context),
                      _putYourNumber(context),
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(bottom: kDefaultPadding),
                            child: gradientButton(context, 'إرسال', _onPress),
                          ),
                        ],
                      ),
                    ],
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

  Widget _putYourNumber(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, -70),
      child: Column(
        children: <Widget>[
          Text(
            'أدخل رقم الجوال ',
            style: TextStyle(fontSize: 12),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: kDefaultPadding * 5),
            child: TextField(
              keyboardType: TextInputType.phone,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0XFF313131),
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0XFF707070))),
              ),
              controller: _controller,
              onSubmitted: (value){},
            ),
          ),
        ],
      ),
    );
  }
  void _onPress(){
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => MobileVerification()));
  }
}
