import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            color: Colors.orangeAccent,
            fontFamily: 'FontMain',
            fontWeight: FontWeight.w500,
          ),
        ),
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(
            fontSize: 21,
            color: Colors.deepPurple,
            fontFamily: 'FontMain',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Design and Style"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Text(
            "Hello World",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
      ),
    );
  }
}
