import 'package:flutter/material.dart';

class Bmiicalculator extends StatefulWidget {
  const Bmiicalculator({Key? key}) : super(key: key);

  @override
  State<Bmiicalculator> createState() => _BmiicalculatorState();
}

class _BmiicalculatorState extends State<Bmiicalculator> {
  TextEditingController height = TextEditingController();
  TextEditingController weight = TextEditingController();
  double h_value = 0;
  double w_value = 0;
  double result = 0;
  void calculate() {
    h_value = double.parse(height.text);
    w_value = double.parse(weight.text);
    result = w_value / (h_value * h_value);
    print(result);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Bmicalculator')),
      backgroundColor: Colors.blueAccent,
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(
          padding: EdgeInsets.all(20.0),
          child: TextField(
              controller: height,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'WEIGHT',
                  filled: true,
                  fillColor: Colors.white)),
        ),
        Padding(
          padding: EdgeInsets.all(20.0),
          child: TextField(
              controller: weight,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'HEIGHT',
                  filled: true,
                  fillColor: Colors.white)),
        ),
        TextButton(
            onPressed: () {
              calculate();
            },
            child: Text('CALCULATOR')),
        Text(result.toString())
      ]),
    );
  }
}
