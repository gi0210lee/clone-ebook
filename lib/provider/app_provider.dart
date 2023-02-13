import 'package:clone_ebook/util/consts.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppProvider with ChangeNotifier {
  AppProvider() {
    initTheme();
  }

  ThemeData _theme = ThemeData.light();
  ThemeData get theme => _theme;

  late bool isDark;
  late SharedPreferences prefs;

  void setTheme(bool value) async {
    isDark = value;
    if (value) {
      await prefs.setString('theme', Constants.darkMode);
      _theme = ThemeData.dark();
    } else {
      await prefs.setString('theme', Constants.lightMode);
      _theme = ThemeData.light();
    }

    notifyListeners();
  }

  String getTheme() {
    if (isDark) {
      return Constants.darkMode;
    } else {
      return Constants.lightMode;
    }
  }

  void initTheme() async {
    prefs = await SharedPreferences.getInstance();
    if (prefs.getString('theme') == null) {
      setTheme(false);
      return;
    }

    setTheme(prefs.getString('theme') == Constants.darkMode);
  }
}
