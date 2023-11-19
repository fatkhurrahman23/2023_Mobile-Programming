import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation & Routing - Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/secondScreen');
              }, 
              child: Text("Go to Second Screen")
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {}, 
              child: Text("Navifation with Data")
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {}, 
              child: Text("Return data from Another Screen")
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/replacementScreen');
              },
              child: Text("Replace Screen")
            ),
            SizedBox(height: 20),

          ]
        ),
      ),
      
    );
  }
}