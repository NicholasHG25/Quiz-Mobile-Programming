import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _selectedTheme = AppTheme.themeA;
  String _selectedFont = 'Roboto';

  ThemeData get selectedTheme => _selectedTheme;
  String get selectedFont => _selectedFont;

  void changeTheme(ThemeData theme) {
    _selectedTheme = theme;
    notifyListeners();
  }

  void changeFont(String font) {
    _selectedFont = font;
    notifyListeners();
  }
}
