import 'package:flutter/material.dart';
import 'package:jameiaapps/shared_ui/app_bar/shared_appBar.dart';
import 'package:jameiaapps/utilities/constants.dart';

class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SharedAppBar(title: 'السجل', subtitle: ''),
          Expanded(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: kBackgroundColor,
              child: Padding(
                padding: const EdgeInsets.only(top: kDefaultPadding),
                child: SingleChildScrollView(
                  child: _content(context),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _content(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _title(context),
        _divider(context, 'اليوم'),
        ],
    );
  }


  Widget _title(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Text(
        'سجل الحركات:',
        style: TextStyle(
          fontSize: 16,
          color: const Color(0xff313131),
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

  Widget _divider(BuildContext context, String day) {
    return Row(
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 5),
          width: kDefaultPadding * 2.5,
          child: Divider(
            height: 5,
            thickness: 2,
          ),
        ),
        Transform.translate(
          offset: Offset(0, -3),
          child: Text(
            day,
            style: TextStyle(
              fontSize: 9,
              color: const Color(0xffd0021b),
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 5),
            child: Divider(
              height: 5,
              thickness: 2,
            ),
          ),
        ),
      ],
    );
  }
}
