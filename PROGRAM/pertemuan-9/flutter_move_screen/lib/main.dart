import 'package:flutter/material.dart';
import 'detail_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: MoveScreen(),
      ),
    );
  }
}

class MoveScreen extends StatelessWidget {
  const MoveScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Belajar Navigasi'),
        ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailScreen(
                image: "https://upload.wikimedia.org/wikipedia/commons/3/3b/Wali_kota_Surakarta_Gibran_Rakabuming_Raka.jpg",
                nama: "M FATKHUR RAHMAN",
                email: "sch.fatkhurrahman@gmail.com",
                noHp: 628970541904,
              )),
            );
          },
          child: Text('Pindah ke halaman detail'),
        )
      )
    );
  }
}
