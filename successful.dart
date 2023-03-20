import 'dart:developer';
import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: successful()));
}
class successful extends StatelessWidget {
  const successful({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text('Successful Registered'),),
      body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [ 
        Text('successfully Registered'),
      ], ),
    ),);
  }
}
