import 'package:flutter/material.dart';

void main() {
  runApp(SettingsApp());
}

class SettingsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Settings',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SettingsPage(),
    );
  }
}

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  String _selectedLanguage = 'EN';
  String _selectedRegion = 'EUROPE';
  bool _notificationsEnabled = true;

  final List<String> _languages = ['EN', 'CN', 'KOR'];
  final List<String> _regions = ['EUROPE', 'ASIA', 'AMERICA', 'AFRICA'];

  void _changeLanguage(bool next) {
    setState(() {
      int currentIndex = _languages.indexOf(_selectedLanguage);
      if (next) {
        currentIndex = (currentIndex + 1) % _languages.length;
      } else {
        currentIndex = (currentIndex - 1 + _languages.length) % _languages.length;
      }
      _selectedLanguage = _languages[currentIndex];
    });
  }

  void _changeRegion(bool next) {
    setState(() {
      int currentIndex = _regions.indexOf(_selectedRegion);
      if (next) {
        currentIndex = (currentIndex + 1) % _regions.length;
      } else {
        currentIndex = (currentIndex - 1 + _regions.length) % _regions.length;
      }
      _selectedRegion = _regions[currentIndex];
    });
  }

  void _toggleNotifications(bool value) {
    setState(() {
      _notificationsEnabled = value;
    });
  }

  void _sendFeedback() {
    // Implement feedback sending logic here
    print('Feedback Sent');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Text('Language'),
                Row(
                  children: <Widget>[
                    IconButton(
                      icon: const Icon(Icons.arrow_left),
                      onPressed: () => _changeLanguage(false),
                    ),
                    Text('$_selectedLanguage'),
                    IconButton(
                      icon: const Icon(Icons.arrow_right),
                      onPressed: () => _changeLanguage(true),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Text('Location'),
                Row(
                  children: <Widget>[
                    IconButton(
                      icon: const Icon(Icons.arrow_left),
                      onPressed: () => _changeRegion(false),
                    ),
                    Text('$_selectedRegion'),
                    IconButton(
                      icon: const Icon(Icons.arrow_right),
                      onPressed: () => _changeRegion(true),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Text('Notifications'),
                Switch(
                  value: _notificationsEnabled,
                  onChanged: _toggleNotifications,
                ),
              ],
            ),
            const Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: _sendFeedback,
                child: const Text('SEND FEEDBACK'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}