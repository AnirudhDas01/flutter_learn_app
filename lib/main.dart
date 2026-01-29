import 'package:flutter/material.dart';
import './data/names.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Circle Avatar",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
          ),
          backgroundColor: Colors.blue,
        ),
        body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              leading: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.blue),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                ),
                child: Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/img.png'),
                  ),
                ),
              ),
              title: Text(names[index]),
              subtitle: Text("Last seen 20mins ago"),
              trailing: Icon(
                Icons.favorite,
                color: Colors.pink,
                size: 24.0,
                semanticLabel: 'Text to announce in accessibility modes',
              ),
            );
          },
          itemCount: 20,
          separatorBuilder: (BuildContext context, int index) {
            return Divider(height: 1, thickness: 2);
          },
        ),
      ),
    );
  }
}
