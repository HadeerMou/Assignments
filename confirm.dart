import 'dart:developer';
import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: confirmation()));
}
class confirmation extends StatelessWidget {
  const confirmation({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text('Confirmation'),),
      body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [ 
        Text('Email Confirmed successfully'),
        Text('Enter verification code '),
        DecoratedBox(decoration: BoxDecoration(shape: BoxShape.circle),),
        DecoratedBox(decoration: BoxDecoration(shape: BoxShape.circle),),
        DecoratedBox(decoration: BoxDecoration(shape: BoxShape.circle),),
        DecoratedBox(decoration: BoxDecoration(shape: BoxShape.circle),)

      ],

    ),),);
  }
}