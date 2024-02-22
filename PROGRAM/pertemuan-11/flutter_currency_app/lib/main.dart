import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: CurrencyApps());
  }
}

class CurrencyApps extends StatefulWidget {
  const CurrencyApps({super.key});

  @override
  State<CurrencyApps> createState() => _CurrencyAppsState();
}

class _CurrencyAppsState extends State<CurrencyApps> {
  //inisialisasi variabel
  var apiKey = 'fca_live_5m3B1GhXh3160NO5aWXYmjPtA0p7aclebJzASrQH';
  dynamic data;
  bool isLoading = false;
  var hasilKonversi;

  //texteditingcontroller adalah class yang digunakan untuk
  //mengelola input teks di dalam widget. Ini memungkinkan Anda untuk mengakses dan
  //mengubah teks yang dimasukkan oleh pengguna dalam widget input teks tersebut.
  TextEditingController fromController = TextEditingController();
  TextEditingController toController = TextEditingController();
  TextEditingController totalController = TextEditingController();

  //metode untuk mengambil data dari internet
  Future<void> convert(base_currency, currencies) async {
    //endpoint yang dituju
    //endpotnt ini perlu apiKey, mata uang asal(base_currency), dan mata uang tujuan(currencie)
    var response = await http.get(
      Uri.parse(
        'https://api.freecurrencyapi.com/v1/latest?apikey=${apiKey}'
        '&base_currency=${base_currency}&currencies=${currencies},${base_currency}',
      ),
    );

    //setelah melakukan request http ubah setstate datanya
    setState(() {
      data = json.decode(response.body);

      //perhitungan sederhana untuk mendapatkan total konversi dari mata uang ke mata uang tertentu
      //dengan jumlah yang ditentukan
      hasilKonversi = int.parse(totalController.text) *
          data['data']['${currencies}'] /
          data['data']['${base_currency}'];
      isLoading = false; //untuk menghilangkan circular indicator
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Conversion'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Row(
            children: [
              Expanded(
                flex:
                    1, //wajib menggunakan flex untuk memberikan porsi pada widget lainnya
                child: Container(
                  height: 70,
                  child: TextFormField(
                    controller: fromController,
                    decoration: const InputDecoration(
                      labelText: 'From',
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Icon(Icons.call_split_outlined),
              SizedBox(
                width: 20,
              ),
              Expanded(
                flex: 1, //memberikan porsi untuk widget ini sebesar 1
                child: Container(
                  height: 70,
                  child: TextFormField(
                    controller: toController,
                    decoration: const InputDecoration(
                      labelText: 'To',
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 70,
            child: TextFormField(
              keyboardType: TextInputType.number,
              controller: totalController,
              decoration: const InputDecoration(
                labelText: 'Jumlah Uang',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                isLoading = true; // Aktifkan indikator progress
              });
              convert(fromController.text, toController.text);
            },
            child: isLoading
                ? CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                      Colors.white, // Ganti warna di sini
                    ),
                  ) // Tampilkan indikator saat isLoading true
                : Text('Convert'),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Hasil Konversi',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          data != null
              ? Column(
                  //teks akan dimulai dari sebelah kiri
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '1 ${fromController.text} = ${data['data']['${toController.text}']} ${toController.text} \n'
                      '${totalController.text} ${fromController.text} = ${hasilKonversi} ${toController.text} \n',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      'Waktu Konversi \n'
                      '${DateFormat('dd-MM-yyyy HH:mm:ss').format(DateTime.now())}',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )
              : Text('Belum Ada Data')
        ],
      ),
    );
  }
}