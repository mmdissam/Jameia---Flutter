import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jameiaapps/shared_ui/app_bar/components/arrow_back.dart';
import 'package:jameiaapps/shared_ui/app_bar/components/title_and_sub_title.dart';
import 'package:jameiaapps/utilities/constants.dart';

class SharedAppBar extends StatelessWidget {
  final String title;
  final String subtitle;

  const SharedAppBar({Key key, this.title, this.subtitle}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.24,
      color: kBackgroundColor,
      child: Stack(
        children: <Widget>[
          Center(
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.24,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25)),
                gradient: kGradient,
              ),
              child: ClipRect(child: CustomPaint(painter: CirclePainter())),
            ),
          ),
          ArrowBack(),
          TitleAndSubTitle(title: title,subtitle: subtitle,),
        ],
      ),
    );
  }
}
class CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.white10
      ..style = PaintingStyle.stroke
      ..strokeWidth = 45;

    canvas.drawCircle(Offset(0, -30), 120, paint);
    canvas.drawCircle(Offset(size.width, size.height + 30), 120, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}