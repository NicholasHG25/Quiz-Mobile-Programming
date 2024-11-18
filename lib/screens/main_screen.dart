import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/theme_provider.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Main Screen',
            style: TextStyle(fontFamily: themeProvider.selectedFont)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'This is the Main Screen',
              style: TextStyle(
                  fontFamily: themeProvider.selectedFont, fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/settings');
              },
              child: Text('Go to Settings',
                  style: TextStyle(fontFamily: themeProvider.selectedFont)),
            ),
          ],
        ),
      ),
    );
  }
}
