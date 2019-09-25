import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Porfolio(),
    ));

class Porfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Portfolio'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),
    );
  }
}
