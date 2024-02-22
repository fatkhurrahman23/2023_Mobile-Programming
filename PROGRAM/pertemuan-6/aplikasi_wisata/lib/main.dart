import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Objek Wisata"),
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.only(
              left: 20,
              top: 50,
              right: 20,
              bottom: 20,
            ),
            child: Column(
              children: [
                Image(
                  image: AssetImage('../assets/images/jolong.jpg'),
                  height: 200,
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "WISATA AGRO JOLONG",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.red,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 10)),
                        Icon(Icons.star, color: Colors.yellow),
                        Text("4,2"),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Pati, Jawa Tengah",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Text(
                  "Wisata Agro Jolong yang berlokasi di Desa Sitiluhur, Kecamatan Gembong, Kabupaten Pati, Jawa Tengah akan menyuguhkan hamparan kebun kopi yang luas dilengkapi dengan beberapa tempat menarik yang bisa kamu kunjungi, seperti taman bunga, rumah pohon, dan wisata air terjun Grenjengan. Selain itu, kamu juga bisa mencoba berbagai wahana yang ada di sini untuk menguji adrenalin dengan flying fox, bersantai di terapi ikan, rumah balon, hingga outbound, Toppers.",
                  style: TextStyle(
                    fontSize: 14,
                    color: const Color.fromARGB(255, 23, 6, 11),
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w300,
                  ),
                  textAlign: TextAlign.justify, // Ratakan teks kanan dan kiri
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}