import 'dart:developer';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: signup()));
}

class signup extends StatelessWidget {
  const signup({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text('Signup Page'),),
      body: SingleChildScrollView(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[Container(
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'username',
                hintText: 'Enter username',
              ),
            ),
            padding: EdgeInsets.fromLTRB(15.0, 15, 15.0, 0),
        ),
        Container(
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
                hintText: 'Enter password',
              ),
              obscureText: true,),
            padding: EdgeInsets.fromLTRB(15.0, 15, 15.0, 0),
        ),
        Container(
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Confirm password',
                hintText: 'Enter password',
              ),
              obscureText: true,),
            padding: EdgeInsets.fromLTRB(15.0, 15, 15.0, 0),
        ),
         SizedBox(
          height: 10,
        ),
        Container(
          child: ElevatedButton(
          onPressed: () {},
          child: Text('sign up'),
        ),
        ),
      ],),
    ),),);
  }
}