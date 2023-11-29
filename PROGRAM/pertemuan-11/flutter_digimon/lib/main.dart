import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Digimon App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DigimonList(),
    );
  }
}

class DigimonList extends StatefulWidget {
  @override
  _DigimonListState createState() => _DigimonListState();
}

class _DigimonListState extends State<DigimonList> {
  List<dynamic> digimonList = [];

  @override
  void initState() {
    super.initState();
    fetchDigimonData();
  }

  Future<void> fetchDigimonData() async {
    final response = await http.get(Uri.parse('https://digimon-api.vercel.app/api/digimon'));

    if (response.statusCode == 200) {
      setState(() {
        digimonList = json.decode(response.body);
      });
    } else {
      throw Exception('Failed to load digimon data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Digimon List'),
        centerTitle: true,
      ),
      body: digimonList.isEmpty 
        ? Center(child: CircularProgressIndicator())
        : buildDigimonList(),
    );
  }


  Widget buildDigimonList() {
    return ListView.builder(
      itemCount: (digimonList.length / 2).ceil(),
      itemBuilder: (context, rowIndex) {
        int index1 = rowIndex * 2;
        int index2 = index1 + 1;
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            if (index1 < digimonList.length) buildDigimonCard(index1),
            if (index2 < digimonList.length) buildDigimonCard(index2),
          ],
        );
      },
    );
  }

  Widget buildDigimonCard(int index) {
    return Container(
      padding: const EdgeInsets.only(top: 8),
      width: 200, // Adjust the width according to your preference
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 100, // Adjust the height of the image container
              width: 100,  // Adjust the width of the image container
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(digimonList[index]['img']),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
              ),
            ),
            ListTile(
              title: Text(
                digimonList[index]['name'],
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 8),
                  Text(
                    'Level: ${digimonList[index]['level']}',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  SizedBox(height: 8),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}