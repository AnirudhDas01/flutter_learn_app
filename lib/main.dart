import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
  String showDate = "Select Date";
  final f = DateFormat('yyyy/MM/dd hh:mm');

  final List<MaterialAccentColor> colorsArray = [
    // Purples & Pinks
    Colors.purpleAccent,
    Colors.deepPurpleAccent,
    Colors.pinkAccent,

    // Blues
    Colors.indigoAccent,
    Colors.blueAccent,
    Colors.lightBlueAccent,
    Colors.cyanAccent,

    // Greens
    Colors.greenAccent,
    Colors.lightGreenAccent,
    Colors.tealAccent,

    // Yellows & Oranges
    Colors.yellowAccent,
    Colors.amberAccent,
    Colors.orangeAccent,
    Colors.deepOrangeAccent,

    // Reds
    Colors.redAccent,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Date Picker")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        // child: GridView.count(
        //   crossAxisCount: 3,
        //   mainAxisSpacing: 2,
        //   crossAxisSpacing: 2,
        //   children: [
        //     Container(decoration: BoxDecoration(color: Colors.blue)),
        //     Container(decoration: BoxDecoration(color: Colors.blue)),
        //     Container(decoration: BoxDecoration(color: Colors.blue)),
        //     Container(decoration: BoxDecoration(color: Colors.blue)),
        //     Container(decoration: BoxDecoration(color: Colors.blue)),
        //     Container(decoration: BoxDecoration(color: Colors.blue)),
        //     Container(decoration: BoxDecoration(color: Colors.blue)),
        //     Container(decoration: BoxDecoration(color: Colors.blue)),
        //     Container(decoration: BoxDecoration(color: Colors.blue)),
        //     Container(decoration: BoxDecoration(color: Colors.blue)),
        //   ],
        // ),
        child: GridView.builder(
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(color: colorsArray[index]),
            );
          },
          itemCount: colorsArray.length,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            crossAxisSpacing: 11,
            mainAxisSpacing: 11,
          ),
        ),
      ),
    );
  }
}
