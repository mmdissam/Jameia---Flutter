import 'package:flutter/material.dart';
import 'package:jameiaapps/utilities/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'app_bar_circle.dart';

class AppBarCustomize extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      child: Stack(
        children: <Widget>[
          Center(
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.25,
              decoration: BoxDecoration(
                borderRadius:
                BorderRadius.only(bottomLeft: Radius.circular(25)),
                gradient: kGradient,
              ),
              child: ClipRect(child: CustomPaint(painter: CirclePainter())),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Align(
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'أهلا, عبد الرحمن',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                      Text('انضم لجمعية الأن',
                          style: TextStyle(color: Colors.white, fontSize: 12)),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      // Adobe XD layer: 'Group 20' (group)
                      IconButton(
                          icon: SvgPicture.asset('assets/icons/alert_notification.svg'),
                          onPressed: () {}),
                      Stack(
                        children: <Widget>[
                          // Adobe XD layer: 'Rectangle Copy' (shape)
                          Container(
                            width: 45.0,
                            height: 45.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                              color: const Color(0xff6155cc),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Stack(
              children: <Widget>[
                Transform.translate(
                  offset: Offset(10, 10),
                  child: Container(
                    width: 225.0,
                    height: 39.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: const Color(0xffffffff),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('مدة الجمعية:',style: TextStyle(color: Color(0XFF9B9B9B),fontSize: 14,fontWeight: FontWeight.bold)),
                        SizedBox(width: 5),
                        Text('اثنا عشرة شهر',style: TextStyle(color: Color(0XFF9B9B9B),fontSize: 14)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
