import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jameiaapps/shared_ui/app_bar/shared_appBar.dart';
import 'package:jameiaapps/utilities/constants.dart';

class Alerts extends StatefulWidget {
  @override
  _AlertsState createState() => _AlertsState();
}

class _AlertsState extends State<Alerts> {
  bool firstCheckVal = false;
  bool secondCheckVal = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SharedAppBar(title: 'تفاصيل الجمعية', subtitle: ''),
          Expanded(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: kBackgroundColor,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(kDefaultPadding + 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        height: 308.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: const Color(0xc9ffffff),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            _title(context),
                            Center(
                              child: Container(
                                height: 170,
                                width: 300,
                                child: GridView.count(
                                  crossAxisCount: 4,
                                  crossAxisSpacing: 40,
                                  mainAxisSpacing: 2,
                                  children: List.generate(12, (index) {
                                    return Center(
                                      child: Container(
                                        width: 38.0,
                                        height: 38.0,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(19.0, 19.0)),
                                          color: const Color(0xffbd10e0),
                                          border: Border.all(
                                              width: 1.0,
                                              color: const Color(0xff707070)),
                                        ),
                                        child: Center(
                                          child: Text(
                                            '${index + 1}',
                                            style: TextStyle(
                                              fontFamily: 'Cairo',
                                              fontSize: 13,
                                              color: const Color(0xff313131),
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  }),
                                ),
                              ),
                            ),
                          ],
                        ),
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

  Widget _selectMonth(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.25,
      child: GridView.count(
        crossAxisSpacing: 70,
        mainAxisSpacing: kDefaultPadding / 2,
        crossAxisCount: 4,
        children: List.generate(12, (index) {
          return Container(
            width: 100,
            height: 100,
            child: Center(
              child: Container(
                width: 38.0,
                height: 38.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.elliptical(19.0, 19.0)),
                  color: const Color(0xffbd10e0),
                  border:
                      Border.all(width: 1.0, color: const Color(0xff707070)),
                ),
                child: Center(
                  child: Text(
                    '${index + 1}',
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: 13,
                      color: const Color(0xff313131),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }

  Widget _title(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: kDefaultPadding,right: kDefaultPadding),
      child: Text(
        'تحديد شهر الاستلام:',
        style: TextStyle(
          fontSize: 13,
          color: const Color(0xff313131),
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

  Widget _rowOfRememberAndForgetPassword(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Transform.translate(
                offset: Offset(0, -10),
                child: Checkbox(
                  checkColor: Color(0XFF6155CC),
                  activeColor: Color(0xFFC7C7C7),
                  value: firstCheckVal,
                  onChanged: (bool value) {
                    setState(() {
                      firstCheckVal = value;
                    });
                  },
                ),
              ),
              Expanded(
                child: Text(
                  'أقر بأن جميع البيانات المدخلة صحيحة ودقيقة , في حال تبين خلاف ذلك سيتم إلغاء العملية',
                  style: TextStyle(
                    fontSize: 10,
                    color: const Color(0xff313131),
                  ),
                  softWrap: true,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Transform.translate(
                offset: Offset(0, -10),
                child: Checkbox(
                  checkColor: Color(0XFF6155CC),
                  activeColor: Color(0xFFC7C7C7),
                  value: secondCheckVal,
                  onChanged: (bool value) {
                    setState(() {
                      secondCheckVal = value;
                    });
                  },
                ),
              ),
              Text(
                'أوافق على جميع الشروط والأحكام',
                style: TextStyle(
                  fontSize: 10,
                  color: const Color(0xff313131),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _content(BuildContext context) {
    return Container(
      width: 325.0,
      height: 500,
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: const Color(0xc9ffffff),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          _title(context),
          _selectMonth(context),
          _rowOfRememberAndForgetPassword(context),
        ],
      ),
    );
  }
}
