import 'package:flutter/cupertino.dart';
import 'package:theme_change/sharedPref.dart';

class ThemeProvider extends ChangeNotifier {
  late bool _isDark;
  late MyThemePreferences _preferences;
  bool get isItDark => _isDark;

  ThemeProvider() {
    _isDark = false;
    _preferences = MyThemePreferences();
    getPreferences();
  }

  set isItDark(bool val) {
    _isDark = val;
    _preferences.setTheme(val);
    notifyListeners();
  }

  getPreferences() async {
    _isDark = await _preferences.getTheme();
    notifyListeners();
  }
}
