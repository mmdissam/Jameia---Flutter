import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jameiaapps/constants.dart';
import 'package:jameiaapps/shared_ui/app_bar/components/arrow_back.dart';
import 'package:jameiaapps/shared_ui/app_bar/components/title_and_sub_title.dart';

import 'components/shared_circle_purple_bottom_right.dart';
import 'components/shared_circle_purple_top_left.dart';
import 'components/shared_circle_transparent_bottom_right.dart';
import 'components/shared_circle_transparent_top_left.dart';

class SharedAppBar extends StatelessWidget {
  final String title;
  final String subtitle;

  const SharedAppBar({Key key, this.title, this.subtitle}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.24,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
        gradient: kGradient,
      ),
      child: Stack(
        children: <Widget>[
          CustomPaint(
            painter: SharedCircleTransparentBottomRight(),
            child: Container(),
          ),
          CustomPaint(
            painter: SharedCirclePurpleBottomRight(),
            child: Container(),
          ),
          CustomPaint(
            painter: SharedCircleTransparentTopLeft(),
            child: Container(),
          ),
          CustomPaint(
            painter: SharedCirclePurpleTopLeft(),
            child: Container(),
          ),
          ArrowBack(),
          TitleAndSubTitle(title: title,subtitle: subtitle,),
        ],
      ),
    );
  }
}
