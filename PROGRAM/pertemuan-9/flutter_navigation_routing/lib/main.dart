import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'second_screen.dart';
import 'replacement_screen.dart';
import 'another_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/secondScreen': (context) => SecondScreen(),
        '/replacementScreen': (context) => ReplacementScreen(),
        '/anotherScreen': (context) => AnotherScreen(),
      },
      
    );
  }
}
