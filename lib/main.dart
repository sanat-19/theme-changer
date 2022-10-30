import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_change/homepage.dart';
import 'package:theme_change/themeProv.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: Consumer<ThemeProvider>(
        builder: (context, value, child) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: value.isItDark
                ? ThemeData(
                    primarySwatch: Colors.blue,
                    brightness: Brightness.dark,
                    primaryColor: Colors.blue,
                    appBarTheme: const AppBarTheme(
                      backgroundColor: Colors.blue,
                    ),
                  )
                : ThemeData(
                    primarySwatch: Colors.blue,
                    brightness: Brightness.light,
                    primaryColor: Colors.blue,
                  ),
            home: HomePage(),
          );
        },
      ),
    );
  }
}
