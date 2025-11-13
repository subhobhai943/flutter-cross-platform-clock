import 'package:flutter/material.dart';
import 'dart:async';
import 'settings_view.dart';

class ClockScreen extends StatefulWidget {
  @override
  _ClockScreenState createState() => _ClockScreenState();
}

class _ClockScreenState extends State<ClockScreen> {
  late Timer _timer;
  late DateTime _now;
  bool _is24Hour = true;
  ThemeMode _themeMode = ThemeMode.system;
  @override
  void initState() {
    super.initState();
    _now = DateTime.now();
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _now = DateTime.now();
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  String formattedTime(DateTime time) {
    if (_is24Hour) {
      return '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}:${time.second.toString().padLeft(2, '0')}';
    } else {
      int hour = time.hour > 12 ? time.hour - 12 : (time.hour == 0 ? 12 : time.hour);
      String period = time.hour >= 12 ? 'PM' : 'AM';
      return '$hour:${time.minute.toString().padLeft(2, '0')}:${time.second.toString().padLeft(2, '0')} $period';
    }
  }

  void _openSettings() async {
    final result = await showModalBottomSheet<Map<String, dynamic>>(
      context: context,
      builder: (context) => SettingsView(is24Hour: _is24Hour, themeMode: _themeMode),
    );
    if (result != null) {
      setState(() {
        _is24Hour = result['is24Hour'];
        _themeMode = result['themeMode'];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: _themeMode,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Clock'),
          actions: [
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: _openSettings,
            ),
          ],
        ),
        body: Center(
          child: Text(
            formattedTime(_now),
            style: TextStyle(fontSize: 64, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
