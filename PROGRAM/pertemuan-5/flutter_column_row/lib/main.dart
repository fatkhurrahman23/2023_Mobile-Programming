import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Row and Column'),
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 20, left: 20),
          child: Row(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text('Button 1'),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {},
                child: Text('Button 2'),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {},
                child: Text('Button 3'),
              ),
              SizedBox(width: 20),
            ]
          )
        ),
      ),
    );
  }
}
