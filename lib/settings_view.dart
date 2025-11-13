import 'package:flutter/material.dart';

class SettingsView extends StatefulWidget {
  final bool is24Hour;
  final ThemeMode themeMode;
  SettingsView({required this.is24Hour, required this.themeMode});

  @override
  _SettingsViewState createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  late bool _is24Hour;
  late ThemeMode _themeMode;

  @override
  void initState() {
    super.initState();
    _is24Hour = widget.is24Hour;
    _themeMode = widget.themeMode;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Text('24-Hour Format'),
                Spacer(),
                Switch(
                  value: _is24Hour,
                  onChanged: (val) => setState(() => _is24Hour = val),
                )
              ],
            ),
            Row(
              children: [
                Text('Theme'),
                Spacer(),
                DropdownButton<ThemeMode>(
                  value: _themeMode,
                  items: [
                    DropdownMenuItem(child: Text('System'), value: ThemeMode.system),
                    DropdownMenuItem(child: Text('Light'), value: ThemeMode.light),
                    DropdownMenuItem(child: Text('Dark'), value: ThemeMode.dark),
                  ],
                  onChanged: (val) => setState(() => _themeMode = val ?? ThemeMode.system),
                )
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Save'),
              onPressed: () => Navigator.pop(context, {
                'is24Hour': _is24Hour,
                'themeMode': _themeMode,
              }),
            )
          ],
        ),
      ),
    );
  }
}
