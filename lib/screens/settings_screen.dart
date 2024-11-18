import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/theme_provider.dart';
import '../theme/app_theme.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Select Theme:', style: TextStyle(fontSize: 18)),
            ListTile(
              title: Text('Theme A'),
              onTap: () => themeProvider.changeTheme(AppTheme.themeA),
            ),
            ListTile(
              title: Text('Theme B'),
              onTap: () => themeProvider.changeTheme(AppTheme.themeB),
            ),
            ListTile(
              title: Text('Theme C'),
              onTap: () => themeProvider.changeTheme(AppTheme.themeC),
            ),
            Divider(),
            Text('Select Font:', style: TextStyle(fontSize: 18)),
            ListTile(
              title: Text('Roboto'),
              onTap: () => themeProvider.changeFont('Roboto'),
            ),
            ListTile(
              title: Text('Lobster'),
              onTap: () => themeProvider.changeFont('Lobster'),
            ),
            ListTile(
              title: Text('Oswald'),
              onTap: () => themeProvider.changeFont('Oswald'),
            ),
          ],
        ),
      ),
    );
  }
}
