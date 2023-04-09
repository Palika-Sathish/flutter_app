import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  String _output = '0';
  String _num1 = '';
  String _num2 = '';
  String _operator = '';

  void _buttonPressed(String buttonText) {
    if (buttonText == 'C') {
      _output = '0';
      _num1 = '';
      _num2 = '';
      _operator = '';
    } else if (buttonText == '+' ||
        buttonText == '-' ||
        buttonText == '*' ||
        buttonText == '/') {
      _num1 = _output;
      _operator = buttonText;
      _output = '0';
    } else if (buttonText == '.') {
      if (_output.contains('.')) {
        return;
      } else {
        _output += buttonText;
      }
    } else if (buttonText == '=') {
      _num2 = _output;
      double num1 = double.parse(_num1);
      double num2 = double.parse(_num2);
      if (_operator == '+') {
        _output = (num1 + num2).toString();
      }
      if (_operator == '-') {
        _output = (num1 - num2).toString();
      }
      if (_operator == '*') {
        _output = (num1 * num2).toString();
      }
      if (_operator == '/') {
        _output = (num1 / num2).toString();
      }
      _num1 = '';
      _num2 = '';
      _operator = '';
    } else {
      _output += buttonText;
    }

    setState(() {});
  }

  Widget _buildButton(String buttonText) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: ElevatedButton(
          onPressed: () {
            _buttonPressed(buttonText);
          },
          child: Text(
            buttonText,
            style: TextStyle(fontSize: 24.0),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 12.0),
                alignment: Alignment.bottomRight,
                child: Text(
                  _output,
                  style: TextStyle(fontSize: 48.0),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                _buildButton('7'),
                _buildButton('8'),
                _buildButton('9'),
                _buildButton('/'),
              ],
            ),
            Row(
              children: <Widget>[
                _buildButton('4'),
                _buildButton('5'),
                _buildButton('6'),
                _buildButton('*'),
              ],
            ),
            Row(
              children: <Widget>[
                _buildButton('1'),
                _buildButton('2'),
                _buildButton('3'),
                _buildButton('-'),
              ],
            ),
            Row(
              children: <Widget>[
                _buildButton('.'),
                _buildButton('0'),
                _buildButton('00'),
                _buildButton('+'),
              ],
            ),
            Row(
              children: <Widget>[
                _buildButton('C'),
                _buildButton('='),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
