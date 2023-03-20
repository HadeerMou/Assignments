import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:tut1/main.dart';
void main() {
  runApp(MaterialApp(
    home: reset()));
}
class reset extends StatelessWidget {
  const reset({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text('Change Password'),),
      body: SingleChildScrollView(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[Container(
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter New password',
                hintText: 'Enter password',
              ),
              obscureText: true,),
            padding: EdgeInsets.fromLTRB(15.0, 15, 15.0, 0),
        ),
        Container(
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Confirm Password',
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
          onPressed: () {
            Navigator.pop(context, MaterialPageRoute(builder: (context) => login(),));
          },
          child: Text('submit'),
        ),
        )
    ],),),),);
  }
}