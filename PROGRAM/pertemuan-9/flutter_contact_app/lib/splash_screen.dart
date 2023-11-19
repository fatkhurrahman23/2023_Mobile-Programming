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
          "https://scontent.cdninstagram.com/v/t39.30808-6/394923287_18396917983000143_6003338133617979780_n.jpg?stp=dst-jpg_e15&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE3OTcuc2RyIn0&_nc_ht=scontent.cdninstagram.com&_nc_cat=103&_nc_ohc=2NsgqJL6-RcAX8rnanr&edm=APs17CUAAAAA&ccb=7-5&_nc_e2o=s&oh=00_AfAl6gotgvgeg4IQCBCJ_OHvIZe9ysPYYPzskiyDz_d_tw&oe=655F9C1B&_nc_sid=10d13b", 
          width: 300,
          height: 300,  
        )
      ),
    );
  }
}