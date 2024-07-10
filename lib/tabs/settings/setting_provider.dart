import 'package:flutter/material.dart';

class settingProvider with ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;
  String languageCode = 'en';

  void changeTheme(ThemeMode selectedThemeMode) {
    themeMode = selectedThemeMode;
    notifyListeners();
  }

  void changeSelectedLanguage(String selectedLanguage) {
    languageCode = selectedLanguage;
    notifyListeners();
  }
}
