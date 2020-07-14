import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jameiaapps/shared_ui/app_bar/shared_appBar.dart';
import 'package:jameiaapps/utilities/constants.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SharedAppBar(title: 'الملف الشخصي', subtitle: ''),
          Expanded(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: kBackgroundColor,
              child: Padding(
                padding: const EdgeInsets.only(top: kDefaultPadding / 3),
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
  Widget _content(BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        _profileImage(context),
        _name(context),
        Divider(height: 30, thickness: 1),
        _columnContentProfile(context, 'تعديل الملف الشخصي',
            _leadingIcon(context, 'assets/icons/user.svg')),
        Divider(height: 30, thickness: 2),
        _columnContentProfile(
            context, 'جمعياتي', _leadingIcon(context, 'assets/icons/join.svg')),
        Divider(height: 30, thickness: 2),
        _columnContentProfile(context, 'الاشعارات والأصوات',
            _leadingIcon(context, 'assets/icons/alert.svg')),
        Divider(height: 30, thickness: 2),
        _columnContentProfile(
            context, 'الاعدادات', _leadingIcon(context, 'assets/icons/settings.svg')),
        Divider(height: 30, thickness: 2),
        _columnContentProfile(
            context, 'مساعدة', _leadingIcon(context, 'assets/icons/help.svg')),
        Divider(height: 30, thickness: 2),
        _columnContentProfile(context, 'الشروط والأحكام',
            _leadingPolicy(context,  'assets/icons/policy.svg')),
        Divider(height: 30, thickness: 2),
        _columnContentProfile(context, 'تسجيل خروج',
            _leadingExit(context, 'assets/icons/exit.svg')),
      ],
    );
  }

  Widget _profileImage(BuildContext context) {
    return Container(
      width: 83.0,
      height: 83.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.elliptical(41.5, 41.5)),
        color: const Color(0xff4a90e2),
        border: Border.all(width: 1.0, color: const Color(0xff707070)),
      ),
      child: ClipOval(
        child: SvgPicture.asset(
          'assets/icons/person.svg',
          width: 60,
          height: 60,
          alignment: Alignment.center,
        ),
      ),
    );
  }

  Widget _name(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 5),
      child: Text(
        'عبد الرحمن',
        style: TextStyle(
          fontFamily: 'Rubik',
          fontSize: 18,
          color: const Color(0xd6000000),
          fontWeight: FontWeight.w500,
        ),
        textAlign: TextAlign.left,
      ),
    );
  }

  Widget _columnContentProfile(
      BuildContext context, String title, Widget leading) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 58,
      child: ListTile(
        title: _titleListTitle(context, title),
        leading: leading,
        trailing: _arrowBack(context),
      ),
    );
  }

  Widget _titleListTitle(BuildContext context, String title) {
    return Transform.translate(
      offset: Offset(10, 0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 13,
          color: const Color(0xff313131),
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

  Widget _leadingIcon(BuildContext context, String pathIcon) {
    return CircleAvatar(
      backgroundColor: Color(0x33fe9c5e),
      radius: 36,
      child: SvgPicture.asset(
        pathIcon,
        height: 30,
        width: 30,
      ),
    );
  }
  Widget _leadingPolicy(BuildContext context, String pathIcon) {
    return CircleAvatar(
      backgroundColor: Color(0x33fe9c5e),
      radius: 36,
      child: Transform.translate(
        offset: Offset(10, 10),
        child: SvgPicture.asset(
          pathIcon,
          height: 60,
          width: 60,
        ),
      ),
    );
  }
  Widget _leadingExit(BuildContext context, String pathIcon) {
    return CircleAvatar(
      backgroundColor: Color(0x33fe9c5e),
      radius: 36,
      child: SvgPicture.asset(
        pathIcon,
        height: 30,
        width: 30,
      ),
    );
  }

  Widget _arrowBack(BuildContext context) {
    return IconButton(
      alignment:Alignment.centerLeft,
        icon: Icon(
          Icons.arrow_forward_ios,
          color: Colors.black,
          size: 16,
        ),
        onPressed: () {});
  }
}
