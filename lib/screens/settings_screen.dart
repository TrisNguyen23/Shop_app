import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  static const routeName = '/settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ListTile(
              title: Text('Change Theme'),
              trailing: Switch(
                value: false, // Manage state for theme change here
                onChanged: (value) {
                  // Implement theme change functionality
                },
              ),
            ),
            ListTile(
              title: Text('Language'),
              trailing: DropdownButton<String>(
                value: 'English', // Current language setting
                items: [
                  DropdownMenuItem(child: Text('English'), value: 'English'),
                  DropdownMenuItem(
                      child: Text('Vietnamese'), value: 'Vietnamese'),
                ],
                onChanged: (value) {
                  // Implement language change functionality
                },
              ),
            ),
            // Add more settings here as needed
          ],
        ),
      ),
    );
  }
}
