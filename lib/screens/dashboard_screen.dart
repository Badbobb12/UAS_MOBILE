import 'package:fireflutter/screens/data.dart';

import 'suhu.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart'; // Import file login.dart
import 'calculator.dart'; // Import file kalkulator.dart
import 'dev_screen.dart'; // Import file about.dart
import 'bmi.dart'; // Import file bmi.dart
import 'konversi.dart'; // Import file currency.dart
import 'nilai.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
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
              title: Text('Seismogram'),
              onTap: () {
                // Tambahkan logika untuk menavigasi ke halaman kalkulator (kalkulator.dart)
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EarthquakeListView(),
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Selamat datang di Dashboard!',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}