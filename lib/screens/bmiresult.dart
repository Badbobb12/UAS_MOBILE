import 'package:flutter/material.dart';

class BmiResultPage extends StatelessWidget {
  final double bmiResult;

  BmiResultPage({required this.bmiResult});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Result'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Your BMI Result:',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'BMI: ${bmiResult.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 18.0),
            ),
            Text(
              'Status: ${getBmiStatus(bmiResult)}',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }

  String getBmiStatus(double bmi) {
    if (bmi < 18.5) {
      return 'Underweight (Kurang dari 18.5)';
    } else if (bmi >= 18.5 && bmi <= 24.9) {
      return 'Normal (Antara 18.5 dan 24.9)';
    } else if (bmi >= 25 && bmi <= 29.9) {
      return 'Overweight (Antara 25 dan 29.9)';
    } else {
      return 'Obese (30 atau lebih)';
    }
  }
}
