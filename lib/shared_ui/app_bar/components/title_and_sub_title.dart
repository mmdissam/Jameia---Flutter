import 'package:flutter/material.dart';

class TitleAndSubTitle extends StatelessWidget {
  final String title;
  final String subtitle;

  const TitleAndSubTitle({Key key, this.title, this.subtitle}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, 10),
      child: Align(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Text(subtitle, style: TextStyle(color: Colors.white, fontSize: 12)),
          ],
        ),
      ),
    );
  }
}
