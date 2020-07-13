import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jameiaapps/utilities/constants.dart';

class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.65 - 20,
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _title(context),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(top: kDefaultPadding/2,bottom: kDefaultPadding),
              scrollDirection: Axis.vertical,
              itemCount:9,
              itemBuilder: (context, index) => _listOfAssociations(context),
            ),
          ),
          ],
        ),
      ),
    );
  }

  Widget _title(BuildContext context) {
    return Text(
      'الجمعيات المقترحة',
      style: TextStyle(
        fontSize: 14,
        color: const Color(0xff313131),
        fontWeight: FontWeight.w700,
      ),
      textAlign: TextAlign.left,
    );
  }

  Widget _listOfAssociations(BuildContext context) {
    return Container(
      width: 325.0,
      height: 60.0,
      margin: EdgeInsets.only(bottom: kDefaultPadding),
      padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.white,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _columnOfAmount(context),
          _columnOfMembers(context),
          _columnOfJoin(context),
        ],
      ),
    );
  }

  Widget _columnOfAmount(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _totalOfMembersAndAmount(context, 'إجمالي المبلغ:', '10.000', 'ريال'),
        _totalOfMembersAndAmount(context, 'المبلغ الشهري:', '500', 'ريال'),
      ],
    );
  }

  Widget _columnOfMembers(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _totalOfMembersAndAmount(context, 'الأعضاء:', '20', ''),
        _totalOfMembersAndAmount(context, 'المتبقي:', '2', ''),
      ],
    );
  }

  Widget _columnOfJoin(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        _iconOfJoin(context),
        Expanded(
          child: Text(
            'انضم',
            style: TextStyle(
              fontSize: 9,
              color: const Color(0xffd0021b),
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }

  Widget _totalOfMembersAndAmount(
      BuildContext context, String title, String amount, String coin) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 9),
        ),
        SizedBox(width: 5),
        Text(
          amount,
          style: TextStyle(color: Color(0xffD0021B), fontSize: 11),
        ),
        SizedBox(width: 3),
        Text(coin, style: TextStyle(fontSize: 11)),
      ],
    );
  }

  Widget _iconOfJoin(BuildContext context) {
    return Container(
      width: 27.0,
      height: 24.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: const Color(0xffffc7c7),
      ),
      child:   IconButton(
          icon: SvgPicture.asset('assets/icons/join.svg',fit: BoxFit.fill,),
          onPressed: () {}),
    );
  }
}
