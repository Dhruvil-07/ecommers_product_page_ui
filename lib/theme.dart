import 'package:flutter/material.dart';

ThemeData light_themeData(BuildContext context)
{
   return ThemeData(
     brightness: Brightness.light,
     scaffoldBackgroundColor: Colors.white,
   );
}



ThemeData dark_themeData(BuildContext context)
{
   return ThemeData(
     brightness: Brightness.dark,
     scaffoldBackgroundColor: Colors.black,
   );
}