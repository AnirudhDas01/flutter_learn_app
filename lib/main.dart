import 'dart:math';
import 'package:flutter/material.dart';
import 'package:test_app/widgets/green_submit_button.dart';
import 'package:test_app/widgets/white_text_field.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.z
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          headlineLarge: TextStyle(
            fontSize: 21,
            color: Colors.orange,
            fontWeight: FontWeight.bold,
          ),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 21,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var cntWeight = TextEditingController();
  var cntHeight = TextEditingController();
  var bmiStatus = '';
  var bmi = 0.00;
  Color bmiColor = Colors.white;
  void calculateBmi() {
    setState(() {
      bmi =
          (double.parse(cntWeight.text)) / pow(double.parse(cntHeight.text), 2);
      if (bmi <= 18.5) {
        bmiStatus = 'Under Weight';
        bmiColor = Colors.yellowAccent;
      } else if (bmi > 18.5 && bmi <= 24.9) {
        bmiStatus = 'Healty';
        bmiColor = Colors.greenAccent;
      } else if (bmi > 25 && bmi <= 29.9) {
        bmiStatus = 'Overweight';
        bmiColor = Colors.orangeAccent;
      } else if (bmi > 30.0) {
        bmiStatus = 'Obese';
        bmiColor = Colors.redAccent;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(title: Text("Flutter BMI Calculator")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SizedBox(
            height: 400,
            width: double.infinity,
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 63, 75, 82),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                spacing: 8,
                children: [
                  Padding(
                    padding: EdgeInsetsGeometry.all(15),
                    child: WhiteTextField(
                      hintText: 'Enter Weight',
                      inpController: cntWeight,
                      prefixText: "Kgs. ",
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsGeometry.all(15),
                    child: WhiteTextField(
                      hintText: 'Enter Height',
                      inpController: cntHeight,
                      prefixText: 'Mts. ',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: SizedBox(
                      width: 140,
                      height: 45,
                      child: GreenSubmitButton(
                        calculateBmi: calculateBmi,
                        displayText: 'Calculate',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Column(
                      children: [
                        Text(
                          bmiStatus,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: bmiColor,
                          ),
                        ),
                        Text(
                          bmi.toStringAsFixed(2),
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
