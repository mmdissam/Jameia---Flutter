import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
          SharedAppBar(title: 'التحقق من رقم الجوال', subtitle: ''),
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
                      _enterYourCode(context),
                      Padding(
                        padding: const EdgeInsets.only(bottom: kDefaultPadding),
                        child: gradientButton(context, 'إرسال', () {}),
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
           'أدخل الكود الذي تم استلامه',
            style: TextStyle(fontSize: 12, color: Color(0XFF9B9B9B)),
          ),
        ],
      ),
    );
  }

  Widget _enterYourCode(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, -70),
      child: Column(
        children: <Widget>[
         _codeNumber(context),
          _rowOfCodeMessage(context),
        ],
      ),
    );
  }
  Widget _rowOfCodeMessage(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
         'لم أستلم رسالة الكود؟',
          style: TextStyle(color:Color(0XFF6155CC), fontSize: 12),
        ),
        SizedBox(height: kDefaultPadding*5),
        FlatButton(
          onPressed:  () {},
          child: Text(
            'ارسال  مرة اخرى',
            style: TextStyle(color: Color(0XFF6155CC),fontSize: 12),
          ),
        ),
      ],
    );
  }

 Widget _codeNumber(BuildContext context) {
    return  Padding(
      padding:
      const EdgeInsets.symmetric(horizontal: kDefaultPadding * 5),
      child: TextField(
//              keyboardType: TextInputType.phone,
        keyboardType: TextInputType.numberWithOptions(decimal: true),
        inputFormatters: [BlacklistingTextInputFormatter(new RegExp('[-]'))],
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
        onSubmitted: (value) { },
      ),
    );
 }

}
