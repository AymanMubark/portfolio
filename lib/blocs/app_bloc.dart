import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AppBloc with ChangeNotifier, DiagnosticableTreeMixin {
  ThemeMode themeMode = ThemeMode.light;
  bool get isDark => themeMode == ThemeMode.dark;
  Future<void> changeThemeMode() async {
    if (isDark) {
      themeMode = ThemeMode.light;
    } else {
      themeMode = ThemeMode.dark;
    }
    notifyListeners();
  }
}
