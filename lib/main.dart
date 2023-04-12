import 'NotesScreen.dart';
import 'welcome.dart';
import 'package:flutter/material.dart';
import 'calculator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
       // '/weather': (context) => WeatherPage(),
        '/calculator': (context) => CalculatorPage(),
        '/notes': (context) => NotesScreen(),
      },
    );
  }
}
