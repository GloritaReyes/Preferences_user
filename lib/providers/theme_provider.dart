import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier{
  ThemeData CurrentTheme;

  ThemeProvider({
    required bool isDarkmode
  }): CurrentTheme = isDarkmode ? ThemeData.dark() :ThemeData.light();

  setLightMode(){
    CurrentTheme = ThemeData.light();
    notifyListeners();
  }
  setDarkmode(){
    CurrentTheme = ThemeData.dark();
    notifyListeners();
  }
}