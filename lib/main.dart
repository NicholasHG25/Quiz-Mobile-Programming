import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/theme_provider.dart';
import 'screens/main_screen.dart';
import 'screens/settings_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) {
          return MaterialApp(
            title: 'Multi Theme & Font App',
            theme: themeProvider.selectedTheme.copyWith(
              textTheme: GoogleFonts.getTextTheme(themeProvider.selectedFont),
            ),
            initialRoute: '/',
            routes: {
              '/': (context) => MainScreen(),
              '/settings': (context) => SettingsScreen(),
            },
          );
        },
      ),
    );
  }
}
