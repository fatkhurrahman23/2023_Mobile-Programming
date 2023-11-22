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
        primarySwatch: Colors.grey,
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
      itemCount: digimonList.length,
      itemBuilder: (context, index) {
        return buildDigimonListItem(index);
      },
    );
  }

  Widget buildDigimonListItem(int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromARGB(255, 67, 74, 81),
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          title: Text(
            digimonList[index]['name'],
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            'Level: ${digimonList[index]['level']}',
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(digimonList[index]['img']),
            radius: 30,
          ),
        ),
      ),
    );
  }
}