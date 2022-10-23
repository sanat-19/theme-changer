import 'package:day_night_switch/day_night_switch.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_change/themeProv.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSwitched = false;
  var textValue = 'Switch is OFF';

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = 'Switch Button is ON';
      });
      print('Switch Button is ON');
    } else {
      setState(() {
        isSwitched = false;
        textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }
  }

  @override
  Widget build(BuildContext context) {
    print("Builder");
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
