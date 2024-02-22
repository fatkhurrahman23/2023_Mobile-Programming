import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Profilku'),
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.only(
              top: 50,
              left: 20,
              right: 20,
              bottom: 20,
            ),
            child: Column(
              children: [
                Image(
                  // image: AssetImage('../assets/images/Puan-Maharani.jpg'),
                  image: AssetImage('../assets/images/aku_turu.jpeg'),
                  // image: AssetImage('Puan-Maharani.jpg'),
                  height: 300,
                ),
                SizedBox(height: 20),
                Text("MOH FATKHUR RAHMAN",
                  style: new TextStyle(
                    fontSize: 24,
                    // fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  )
                ),
                SizedBox(height: 10),
                Text("Semarang, Indonesia",
                  style: TextStyle(
                    fontSize: 18,
                  )
                ),
                SizedBox(height: 10),
                Text("Jalan Sumurboto no.24",
                  style: TextStyle(
                    fontSize: 18,
                  )
                ),
                SizedBox(height: 15),
                Text("Seorang mahasiswa yang memiliki hobi memancing kerusuhan. \"Kesepian\", adalah kata yang selalu menghantuinya. Mencari teman dan perhatian adalah hal yang selalu ia lakukan",
                  style: new TextStyle(
                    fontSize: 14,
                    fontFamily: 'Poppins-Medium',
                    // fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        
        )  
        
      ),
    );
  }
}
