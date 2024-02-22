import 'package:flutter/material.dart';

void main() => runApp(HelloApp());


class HelloApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello FATHUR',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello FATHUR'),
        ),
        body: Center(
          child: Text(
            'FATHUYYYY',
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 48, 
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent,
            ),
          )
        ),
      )  
    );
  }
}
