import 'package:flutter/material.dart';
import 'file:///C:/Users/NiMo-/AndroidStudioProjects/jameia_apps/lib/utilities/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ArrowBack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            color: Colors.white,
          ),
          child: IconButton(
            icon: SvgPicture.asset('assets/icons/arrow_back.svg'),
            onPressed:  (){},
          ),
        ),
      ),
    );
  }
}
