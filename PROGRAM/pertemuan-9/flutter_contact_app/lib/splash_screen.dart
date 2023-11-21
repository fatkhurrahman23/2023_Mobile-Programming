// splash_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_contact_app/home_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.network(
          "https://cdn.icon-icons.com/icons2/2348/PNG/512/contacts_address_book_icon_143029.png", 
          width: 150,
          height: 150,  
        )
      ),
    );
  }
}