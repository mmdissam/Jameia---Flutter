import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jameiaapps/constants.dart';
import 'package:jameiaapps/screens/sign_in/sign_in.dart';
import 'package:jameiaapps/shared_ui/app_bar/shared_appBar.dart';
import 'package:jameiaapps/shared_ui/button/gradient_button.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _emailController;
  TextEditingController _passwordController;
  Key _key = GlobalKey<FormState>();
  bool _obscureText = true;
  bool checkVal = false;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SharedAppBar(title: 'تسجيل الدخول', subtitle: 'أهلا بعودتك'),
          Expanded(
            child: Container(
                width: double.infinity,
                height: double.infinity,
                color: kBackgroundColor,
                child: _form(context)),
          ),
        ],
      ),
    );
  }

  Widget _form(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SingleChildScrollView(
        child: Form(
          key: _key,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              // To make Column widgets start from below
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                _emailForm(context),
                _passwordForm(context),
                _rowOfRememberAndForgetPassword(context),
                _signInButton(context),
                _rowOfCreateAnAccount(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _emailForm(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: TextFormField(
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        keyboardType: TextInputType.emailAddress,
        controller: _emailController,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding, vertical: kDefaultPadding),
          fillColor: Colors.white,
          filled: true,
          hintText: 'البريد الالكتروني',
          hintStyle: TextStyle(
            color: Color(0XFF636363),
            fontSize: 12,
          ),
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          border:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue.shade700)),
//          labelText: 'البريد الالكتروني',
//          labelStyle: TextStyle(
//            color: Color(0XFF636363),
//            fontSize: 12,
//          ),
        ),
      ),
    );
  }

  Widget _passwordForm(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: kDefaultPadding/2),
      child: TextFormField(
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        controller: _passwordController,
        obscureText: _obscureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding, vertical: kDefaultPadding),
          fillColor: Colors.white,
          filled: true,
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
            icon: Icon(
              _obscureText ? Icons.visibility_off : Icons.remove_red_eye,
              color: Colors.grey.shade500,
            ),
          ),
          alignLabelWithHint: true,
          hintText: 'كلمة المرور',
          hintStyle: TextStyle(
              color: Color(0XFF636363),
              fontSize: 14,
              fontWeight: FontWeight.bold),
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          border:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue.shade700)),
        ),
      ),
    );
  }

  Widget _signInButton(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding/2),
      child: gradientButton(context,'تسجيل الدخول'),
    );
  }

  Widget _rowOfCreateAnAccount(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'ليس لديك حساب؟',
          style: TextStyle(color:Color(0XFF313131), fontSize: 14),
        ),
        FlatButton(
          onPressed:  () =>  Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => SignIn())) ,
          child: Text(
            'سجل الأن',
            style: TextStyle(fontSize: 14, color: Color(0XFF9013FE)),
          ),
        ),
      ],
    );
  }

 Widget _rowOfRememberAndForgetPassword(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            Checkbox(
              checkColor: Color(0XFF6155CC),
              activeColor: Colors.white,
              value: checkVal,
              onChanged: (bool value) {
                setState(() {
                  checkVal = value;
                });
              },
            ),
            Text('تذكر كلمة المرور',style: TextStyle(color: Color(0XFF313131)),),
          ],
        ),
        FlatButton(
          onPressed: () {},
          child: Text(
            'نسيت كلمة المرور',
            style: TextStyle(fontSize: 14, color: Color(0XFF313131)),
          ),
        ),
      ],
    );
 }
}
