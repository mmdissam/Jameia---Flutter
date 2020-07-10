import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jameiaapps/constants.dart';
import 'package:jameiaapps/lang/app_locale.dart';
import 'package:jameiaapps/screens/login/login.dart';
import 'package:jameiaapps/screens/on_boarding/on_boarding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jameia Apps',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.cairoTextTheme(),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Login(),
      localizationsDelegates: [
        // To make all the widget and Material and my edits change according to the language
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        AppLocale.delegate,
      ],
      // To supported different languages
      supportedLocales: [
        Locale('en', ''),
        Locale('ar', ''),
      ],
      // To know the current device language
      localeResolutionCallback: (currentLocal, supportedLocal) {
        if (currentLocal != null) {
          // To maintain resolution if there are other languages not supported.
          for (Locale locale in supportedLocal) {
            if (currentLocal.languageCode == locale.languageCode) {
              return currentLocal;
            }
          }
        }
        // If current local is null, return first language.
        return supportedLocal.first;
      },
    );
  }
}
