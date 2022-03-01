import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:restaurant_app/shared/colors.dart';

ThemeData lightTheme() {
  return ThemeData(
    scaffoldBackgroundColor: backgroundColor,
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: backgroundColor,
        statusBarIconBrightness: Brightness.dark,
      ),
      backgroundColor: backgroundColor,
      elevation: 0,
      actionsIconTheme: IconThemeData(color: Colors.black),
    ),
  );
}
