import 'package:day_night_switch/day_night_switch.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_change/themeProv.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Theme Change")),
      body: Center(
        child: Consumer<ThemeProvider>(
          builder: (context, value, child) {
            return Transform.scale(
              scale: 0.5,
              child: DayNightSwitch(
                value: value.isItDark,
                onChanged: (bool v) {
                  value.isItDark = v;
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
