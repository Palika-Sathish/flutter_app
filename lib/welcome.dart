import 'weather.dart';
import 'package:flutter/material.dart';
import 'calculator.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Welcome')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to My Flutter App!',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 16.0),
            Image.asset(
              'assets/images/wecome_image.jpeg',
              height: 200.0,
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WeatherPage()),
                );
              },
              child: Text('Weather Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CalculatorPage()),
                );
              },
              child: Text('Calculator Page'),
            ),
          ],
        ),
      ),
    );
  }
}
