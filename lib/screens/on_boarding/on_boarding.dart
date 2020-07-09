import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jameiaapps/constants.dart';
import 'package:jameiaapps/utilities/helpers.dart';

class OnBoarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _backgroundImage(context),
          Container(
            padding: EdgeInsets.only(
              top: kDefaultPadding * 3,
              left: kDefaultPadding,
              right: kDefaultPadding,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _titleText(context),
                SizedBox(height: 10),
                _contentText(context),
                SizedBox(height: 23),
                _nextButton(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _backgroundImage(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.45,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/Bitmap.png'),
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  Widget _titleText(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        getTranslated(context, 'title_onBoarding'),
        style: TextStyle(
          color: Colors.black,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _contentText(BuildContext context) {
    return Text(
      getTranslated(context, 'subtitle_onBoarding'),
      style: TextStyle(
        color: Colors.black,
        fontSize: 16,
      ),
    );
  }

  Widget _nextButton(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: InkWell(
        child: Container(
          width: 125,
          height: 50,
          decoration: BoxDecoration(
            gradient: kGradient,
            borderRadius: BorderRadius.all(Radius.circular(25)),
          ),
          child: Center(
            child: Text(
              getTranslated(context, 'button_next_onBoarding'),
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}
