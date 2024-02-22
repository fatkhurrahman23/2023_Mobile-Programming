import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'list_kontak.dart';


void main() async {
  await Hive.initFlutter();
  await Hive.openBox('contacts');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SQLite Flutter',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const ListKontakPage(),
    );
  }
}