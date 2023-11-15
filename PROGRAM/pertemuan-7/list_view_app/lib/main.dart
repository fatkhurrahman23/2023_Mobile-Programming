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
          title: Text('Combined View'),
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text('Horizontal List View', 
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10)
                ],
              ),
            ),
            Container(
              height: 250,
              child: 
                Container(height: 250,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        // color: Colors.red,
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: NetworkImage("https://cdn.pixabay.com/photo/2017/03/31/04/25/historic-buildings-2190388_1280.jpg"),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        // color: Colors.red,
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: NetworkImage("https://cdn.pixabay.com/photo/2017/03/31/04/25/historic-buildings-2190388_1280.jpg"),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              crossAxisAlignment: CrossAxisAlignment.start,
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text('Horizontal List View', 
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10)
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text('Item $index'),
                    subtitle: Text('Subtitle $index'),
                    // leading: Image.network(
                    //   'https://afandistudio.net/asset/afandi_studio.png',
                    //   // 'https://ocw.afandistudio.net/storage/uploads/user/photo/user_photo_20210902063737.jpg',
                    //   width: 50,
                    //   height: 50,
                    //   ),
                    leading: Icon(Icons.star), 
                  );
                }
              ),
            )
          ],
        )
      ),
    );
  }
}
