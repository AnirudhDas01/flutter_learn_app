import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:test_app/ui_helper/util.dart';

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
  bool isEnabled = true;
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  bool togglePassword = true;
  Map<String, String> data = {};
  void printVal() {
    if (emailController.text.trim().isNotEmpty &&
        passwordController.text.trim().isNotEmpty) {
      data['email'] = emailController.text;
      data['password'] = passwordController.text;
      String dataToJson = jsonEncode(data);
      print(dataToJson);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter User Input")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 10,
          children: [
            TextField(
              enabled: isEnabled,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: isEnabled
                      ? BorderRadius.circular(50)
                      : BorderRadius.circular(15),
                  borderSide: isEnabled
                      ? BorderSide(color: Colors.red)
                      : BorderSide(color: Colors.grey),
                ),

                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent),
                  borderRadius: BorderRadius.circular(15),
                ),
                prefixIcon: Icon(Icons.email),
                labelText: "Enter Email",
              ),
              controller: emailController,
            ),
            TextField(
              enabled: isEnabled,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: isEnabled
                      ? BorderRadius.circular(50)
                      : BorderRadius.circular(15),
                  borderSide: isEnabled
                      ? BorderSide(color: Colors.red)
                      : BorderSide(color: Colors.grey),
                ),

                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent),
                  borderRadius: BorderRadius.circular(15),
                ),
                suffixIcon: IconButton(
                  onPressed: () {
                    togglePassword = !togglePassword;
                    setState(() {});
                  },
                  icon: Icon(Icons.remove_red_eye),
                ),
                labelText: "Enter Password",
              ),
              controller: passwordController,
              obscureText: togglePassword,
            ),
            SizedBox(
              width: 200,
              height: 40,
              child: ElevatedButton(
                onPressed: printVal,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3.0),
                    side: BorderSide(color: Colors.blueAccent),
                  ),
                ),

                child: Text("Submit"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
