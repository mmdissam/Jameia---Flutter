import 'package:flutter/material.dart';
import 'package:jameiaapps/lang/app_locale.dart';

// To help me instead of writing this long sentence every time
String getTranslated(BuildContext context, String key) {
  return AppLocale.of(context).getTranslated(key);
}
