import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

class DetailScreen extends StatelessWidget {
  String image;
  String nama;
  String email;
  int noHp;

  DetailScreen({
    Key? key,
    required this.image,
    required this.nama,
    required this.email,
    required this.noHp,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman detail")
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              '${this.image}',
              fit: BoxFit.cover,
              height: 150,
              width: 100,
            ),
            SizedBox(height: 15),
            Text('Nama: ${this.nama}'),
            SizedBox(height: 15),
            Text('Email: ${this.email}'),
            SizedBox(height: 15),
            Text('No HP: ${this.noHp}'),

          ],
        )
      ),
    );
  }
}
