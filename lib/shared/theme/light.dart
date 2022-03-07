import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:restaurant_app/shared/colors.dart';

ThemeData lightTheme() {
  return ThemeData(
    scaffoldBackgroundColor: backgroundColor,
    drawerTheme: const DrawerThemeData(backgroundColor: backgroundColor),
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.black),
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
