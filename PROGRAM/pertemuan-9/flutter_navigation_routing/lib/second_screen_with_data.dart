import 'package:flutter/material.dart';

class SecondScreenWithData extends StatelessWidget {
  final String data;

  SecondScreenWithData(this.data, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text(data),
              margin: EdgeInsets.only(bottom: 10),
            ),
            ElevatedButton(
              child: const Text('Back'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}