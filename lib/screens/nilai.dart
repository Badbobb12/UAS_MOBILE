import 'package:flutter/material.dart';
import 'package:fireflutter/screens/dashboard_screen.dart';
import 'package:fireflutter/screens/dev_screen.dart';
import 'login_screen.dart'; // Import file login.dart
import 'calculator.dart'; // Import file kalkulator.dart
import 'bmi.dart'; // Import file bmi.dart
import 'konversi.dart'; // Import file currency.dart

class NilaiPage extends StatefulWidget {
  @override
  _NilaiPageState createState() => _NilaiPageState();
}

class _NilaiPageState extends State<NilaiPage> {
  double tugas1 = 0.0;
  double tugas2 = 0.0;
  double uts = 0.0;
  double uas = 0.0;
  double nilaiAkhir = 0.0;
  String grade = '';

  void hitungNilaiAkhir() {
    // Bobot nilai
    double bobotTugas1 = 0.2;
    double bobotTugas2 = 0.2;
    double bobotUTS = 0.3;
    double bobotUAS = 0.3;

    // Hitung nilai akhir
    nilaiAkhir = (tugas1 * bobotTugas1) +
        (tugas2 * bobotTugas2) +
        (uts * bobotUTS) +
        (uas * bobotUAS);

    // Tentukan grade berdasarkan nilai akhir
    if (nilaiAkhir >= 80) {
      grade = 'A';
    } else if (nilaiAkhir >= 70) {
      grade = 'B';
    } else if (nilaiAkhir >= 60) {
      grade = 'C';
    } else if (nilaiAkhir >= 50) {
      grade = 'D';
    } else {
      grade = 'E';
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hitung Nilai Akhir'),
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
              title: Text('Kalkulator'),
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
              title: Text('About'),
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
              title: Text('Currency'),
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
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Tugas 1:',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                tugas1 = double.tryParse(value) ?? 0.0;
              },
            ),
            SizedBox(height: 10.0),
            Text(
              'Tugas 2:',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                tugas2 = double.tryParse(value) ?? 0.0;
              },
            ),
            SizedBox(height: 10.0),
            Text(
              'UTS:',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                uts = double.tryParse(value) ?? 0.0;
              },
            ),
            SizedBox(height: 10.0),
            Text(
              'UAS:',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                uas = double.tryParse(value) ?? 0.0;
              },
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                hitungNilaiAkhir();
              },
              child: Text('Hitung Nilai Akhir'),
            ),
            SizedBox(height: 20.0),
            Text(
              'Nilai Akhir: ${nilaiAkhir.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            Text(
              'Grade: $grade',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}