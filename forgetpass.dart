import 'dart:developer';
import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: forgetpass()));
}


class forgetpass extends StatelessWidget {
  const forgetpass({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text('Forgot Password?'),),
      body: SingleChildScrollView(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[Container(
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
                hintText: 'Enter Email address',
              ),
            ),
        padding: EdgeInsets.fromLTRB(15.0, 15, 15.0, 0),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          child: ElevatedButton(
          onPressed: () {
          },
          child: Text('submit'),
        ),
        )
        ],
    ),),),);
  }
}