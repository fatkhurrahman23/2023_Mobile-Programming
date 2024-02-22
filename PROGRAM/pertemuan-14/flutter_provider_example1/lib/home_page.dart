import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
// import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    final words = nouns.take(50).toList();
    return Scaffold(
        appBar: AppBar(
          title: const Text('English Words'),
        ),
        body: ListView.builder(
          itemCount: words.length,
          itemBuilder: (context, index) {
            final word = words[index];
            return ListTile(
              title: Text(word),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite_border),
              ),
            );
          },
        ));
  }
}