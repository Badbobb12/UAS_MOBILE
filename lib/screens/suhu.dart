import 'package:flutter/material.dart';

class SuhuConverterPage extends StatefulWidget {
  @override
  _SuhuConverterPageState createState() => _SuhuConverterPageState();
}

class _SuhuConverterPageState extends State<SuhuConverterPage> {
  double inputSuhu = 0.0;
  String fromUnit = 'Celsius';
  String toUnit = 'Fahrenheit';
  double convertedSuhu = 0.0;

  // Fungsi untuk mengkonversi suhu
  void convertSuhu() {
    if (fromUnit == 'Celsius' && toUnit == 'Fahrenheit') {
      convertedSuhu = (inputSuhu * 9 / 5) + 32;
    } else if (fromUnit == 'Fahrenheit' && toUnit == 'Celsius') {
      convertedSuhu = (inputSuhu - 32) * 5 / 9;
    } else if (fromUnit == 'Celsius' && toUnit == 'Kelvin') {
      convertedSuhu = inputSuhu + 273.15;
    } else if (fromUnit == 'Kelvin' && toUnit == 'Celsius') {
      convertedSuhu = inputSuhu - 273.15;
    } else if (fromUnit == 'Fahrenheit' && toUnit == 'Kelvin') {
      convertedSuhu = (inputSuhu - 32) * 5 / 9 + 273.15;
    } else if (fromUnit == 'Kelvin' && toUnit == 'Fahrenheit') {
      convertedSuhu = (inputSuhu - 273.15) * 9 / 5 + 32;
    } else {
      // Konversi unit yang sama
      convertedSuhu = inputSuhu;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Suhu Converter'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Masukkan suhu:',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                inputSuhu = double.tryParse(value) ?? 0.0;
              },
            ),
            SizedBox(height: 20.0),
            Text(
              'Konversi dari:',
              style: TextStyle(fontSize: 18.0),
            ),
            DropdownButton<String>(
              value: fromUnit,
              onChanged: (value) {
                setState(() {
                  fromUnit = value!;
                });
              },
              items: ['Celsius', 'Fahrenheit', 'Kelvin'].map((String unit) {
                return DropdownMenuItem<String>(
                  value: unit,
                  child: Text(unit),
                );
              }).toList(),
            ),
            SizedBox(height: 20.0),
            Text(
              'Konversi ke:',
              style: TextStyle(fontSize: 18.0),
            ),
            DropdownButton<String>(
              value: toUnit,
              onChanged: (value) {
                setState(() {
                  toUnit = value!;
                });
              },
              items: ['Celsius', 'Fahrenheit', 'Kelvin'].map((String unit) {
                return DropdownMenuItem<String>(
                  value: unit,
                  child: Text(unit),
                );
              }).toList(),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                convertSuhu();
              },
              child: Text('Konversi Suhu'),
            ),
            SizedBox(height: 20.0),
            Text(
              'Hasil Konversi: ${convertedSuhu.toStringAsFixed(2)} $toUnit',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}