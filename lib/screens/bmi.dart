import 'package:flutter/material.dart';
import 'bmiresult.dart';

class BmiPage extends StatefulWidget {
  @override
  _BmiPageState createState() => _BmiPageState();
}

class _BmiPageState extends State<BmiPage> {
  double weight = 70.0;
  double height = 170.0;
  double bmi = 0.0;

  void calculateBMI() {
  // Formula to calculate BMI: weight (kg) / (height (m) * height (m))
  final double heightInMeters = height / 100.0;
  bmi = weight / (heightInMeters * heightInMeters);

  // Redirect user to BmiResultPage with BMI result
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => BmiResultPage(bmiResult: bmi),
    ),
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Enter your weight (kg):',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                weight = double.tryParse(value) ?? 0.0;
              },
            ),
            SizedBox(height: 20.0),
            Text(
              'Enter your height (cm):',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                height = double.tryParse(value) ?? 0.0;
              },
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
  onPressed: () {
    calculateBMI();
  },
  child: Text('Calculate BMI'),
),
            SizedBox(height: 20.0),
            Text(
              'Your BMI: ${bmi.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}