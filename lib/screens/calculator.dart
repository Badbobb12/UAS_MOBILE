import 'package:flutter/material.dart';
import 'package:fireflutter/screens/Konversi.dart';
import 'package:fireflutter/screens/bmi.dart';
import 'package:fireflutter/screens/dashboard_screen.dart';
import 'package:fireflutter/screens/dev_screen.dart';
import 'package:fireflutter/screens/login_screen.dart';
import 'package:fireflutter/screens/nilai.dart';
import 'package:fireflutter/screens/suhu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CalculatorApp(),
    );
  }
}

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Side Navigation Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Beranda'),
              onTap: () {
                // Tambahkan logika untuk menavigasi ke beranda di sini
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DashboardPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.calculate), // Icon kalkulator
              title: Text('CalCulator'),
              onTap: () {
                // Tambahkan logika untuk menavigasi ke halaman kalkulator (kalkulator.dart)
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CalculatorApp(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.info), // Icon about
              title: Text('About Dev'),
              onTap: () {
                // Tambahkan logika untuk menavigasi ke halaman about (about.dart)
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DevScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.calculate), // Icon BMI
              title: Text('BMI'),
              onTap: () {
                // Tambahkan logika untuk menavigasi ke halaman BMI (bmi.dart)
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BmiPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.calculate), // Icon Currency
              title: Text('Konversi'),
              onTap: () {
                // Tambahkan logika untuk menavigasi ke halaman Currency (currency.dart)
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CurrencyConverterPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.calculate), // Icon Currency
              title: Text('Nilai'),
              onTap: () {
                // Tambahkan logika untuk menavigasi ke halaman Currency (currency.dart)
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NilaiPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.calculate), // Icon Currency
              title: Text('Suhu'),
              onTap: () {
                // Tambahkan logika untuk menavigasi ke halaman Currency (currency.dart)
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SuhuConverterPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout'),
              onTap: () {
                // Tambahkan logika logout di sini
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String output = '';
  String _output = '0';
  double num1 = 0;
  double num2 = 0;
  String operand = '';

  void buttonPressed(String buttonText) {
    if (buttonText == 'C') {
      _output = '0';
      num1 = 0;
      num2 = 0;
      operand = '';
    } else if (buttonText == '+' ||
        buttonText == '-' ||
        buttonText == '*' ||
        buttonText == '/') {
      num1 = double.parse(output);
      operand = buttonText;
      _output = '0';
    } else if (buttonText == '=') {
      num2 = double.parse(output);
      if (operand == '+') {
        _output = (num1 + num2).toString();
      }
      if (operand == '-') {
        _output = (num1 - num2).toString();
      }
      if (operand == '*') {
        _output = (num1 * num2).toString();
      }
      if (operand == '/') {
        if (num2 != 0) {
          _output = (num1 / num2).toString();
        } else {
          _output = 'Error';
        }
      }
      num1 = 0;
      num2 = 0;
      operand = '';
    } else {
      if (_output == '0') {
        _output = buttonText;
      } else {
        _output = _output + buttonText;
      }
    }

    setState(() {
      output = double.parse(_output).toStringAsFixed(2);
    });
  }

  Widget buildButton(String buttonText) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.grey[300],
          padding: EdgeInsets.all(24.0),
        ),
        onPressed: () {
          buttonPressed(buttonText);
        },
        child: Text(
          buttonText,
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 12.0),
            child: Text(
              output,
              style: TextStyle(fontSize: 48.0, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Divider(),
          ),
          Column(
            children: [
              Row(
                children: [
                  buildButton('7'),
                  buildButton('8'),
                  buildButton('9'),
                  buildButton('/'),
                ],
              ),
              Row(
                children: [
                  buildButton('4'),
                  buildButton('5'),
                  buildButton('6'),
                  buildButton('*'),
                ],
              ),
              Row(
                children: [
                  buildButton('1'),
                  buildButton('2'),
                  buildButton('3'),
                  buildButton('-'),
                ],
              ),
              Row(
                children: [
                  buildButton('C'),
                  buildButton('0'),
                  buildButton('='),
                  buildButton('+'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}