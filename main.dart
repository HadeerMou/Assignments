import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:tut1/forgetpass.dart';
import 'Sign up.dart';
import 'successful.dart';
import 'confirm.dart';
import 'forgetpass.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        textTheme: GoogleFonts.lobsterTextTheme(
          Theme.of(context).textTheme
        )
      ),
      debugShowCheckedModeBanner: false,
      home: login(),);
  }
}
class login extends StatelessWidget {
  final loginKey = GlobalKey<FormState>();
  
  @override
  Widget build(BuildContext context) {
    final double height= MediaQuery.of(context).size.height;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return MaterialApp(
      home: Scaffold(
        key:  _scaffoldKey,
        //backgroundColor: Colors.grey[200],
      appBar: AppBar(title: Text('Login Page'),backgroundColor: Colors.pink[100],),
      body: SingleChildScrollView(
        child: Form(key: loginKey,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Container(child: Text("Welcome back",style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                      margin: EdgeInsets.all(20.0),),
            Container(
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'username',
                hintText: 'Enter username',
                prefixIcon: Icon(Icons.verified_user),
              ),
              validator:(value){
              if(value!.isEmpty ||!RegExp("/^[a-zA-Z0-9_-]{3,16}\$/").hasMatch(value)){
                return "Enter correct username";
              }else{
                return null;
              }
            },
            ),
            padding: EdgeInsets.fromLTRB(15.0, 15, 15.0, 0),
        ),
        Container(
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),
                labelText: 'Password',
                hintText: 'Enter password',
              ),
              validator:(value){
              if(value!.isEmpty ||!RegExp("/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#\$^&*()_-]).{8,18}\$/").hasMatch(value)){
                return "Enter correct password";
              }else{
                return null;
              }
            },
              obscureText: true,),
        padding: EdgeInsets.fromLTRB(15.0, 15, 15.0, 0),),
        SizedBox(
          height: 10,
        ),
        Container(
          child: TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder:(context) => forgetpass(),));
          },
          child: Text('Forget Password?'),
        ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          child: ElevatedButton(
          onPressed: () {
            if(loginKey.currentState!.validate()){
             Navigator.push(context, MaterialPageRoute(builder: (context) => successful(),));
            }else{
              return;
            }
          },
          child: Text('sign in'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.pink[100]
          )
        ),
        ),
        SizedBox(
          height: 10,
        ),
        Column(
        children: [
          Container(child: Text("Don't have account?"),),
          TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder:(context) => signup(),));
          },
          child: Text('Sign up'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.pink[100]
          ),
        ),],
        ),
      ],
        ), ),
    ),),);
  }
}

class signup extends StatelessWidget {
  final signupkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(title: Text('Signup Page'),backgroundColor: Colors.pink[100],),
      body: SingleChildScrollView(
        child:Form(key: signupkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[Container(
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'username',
                  hintText: 'Enter username',
                  prefixIcon: Icon(Icons.verified_user),
                ),
                validator:(value){
              if(value!.isEmpty ||!RegExp("/^[a-zA-Z0-9_-]{3,16}\$/").hasMatch(value)){
                return "Enter correct username";
              }else{
                return null;
              }
            }, 
              ),
              padding: EdgeInsets.fromLTRB(15.0, 15, 15.0, 0),
          ),
          Container(
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                  labelText: 'Email',
                  hintText: 'Enter email address',
                ),
               validator:(value){
              if(value!.isEmpty ||!RegExp("/^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,63})\$/").hasMatch(value)){
                return "Enter valid Email";
              }else{
                return null;
              }
            }, 
              ),
              padding: EdgeInsets.fromLTRB(15.0, 15, 15.0, 0),
          ),
          Container(
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.password),
                  labelText: 'Password',
                  hintText: 'Enter password',
                ),
                validator:(value){
              if(value!.isEmpty ||!RegExp("^(?=.*[A-Z].*[A-Z])(?=.*[!@#\$&*])(?=.*[0-9].*[0-9])(?=.*[a-z].*[a-z].*[a-z]).{8}\$").hasMatch(value)){
                return "Enter correct Password";
              }else{
                return null;
              }
            }, 
                obscureText: true,),
              padding: EdgeInsets.fromLTRB(15.0, 15, 15.0, 0),
          ),
          Container(
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Confirm password',
                  hintText: 'Enter password',
                  prefixIcon: Icon(Icons.password),
                ),
                validator:(value){
              if(value!.isEmpty ||!RegExp("^(?=.*[A-Z].*[A-Z])(?=.*[!@#\$&*])(?=.*[0-9].*[0-9])(?=.*[a-z].*[a-z].*[a-z]).{8}\$").hasMatch(value)){
                return "Enter correct Password";
              }else{
                return null;
              }
            }, 
                obscureText: true,),
              padding: EdgeInsets.fromLTRB(15.0, 15, 15.0, 0),
          ),
           SizedBox(
            height: 10,
          ),
          Container(
            child: ElevatedButton(
            onPressed: () {
            if(signupkey.currentState!.validate()){
              Navigator.push(context, MaterialPageRoute(builder: (context) => successful(),));
            }else{
              return;
            }
            },
            child: Text('sign up'),
            style: ElevatedButton.styleFrom(
            backgroundColor: Colors.pink[100]
            ),
          ),
          ),
              ],),
        ),
    ),),);
  }
}

class forgetpass extends StatelessWidget {
  final forgetKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(title: Text('Forgot Password?'),backgroundColor: Colors.pink[100],),
      body: SingleChildScrollView(
        child:Form(key: forgetKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[Container(
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  hintText: 'example@abc.com',hintStyle: TextStyle(fontStyle: FontStyle.italic),
                  prefixIcon: Icon(Icons.email),
                ),
                validator:(value){
                if(value!.isEmpty ||!RegExp("/^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,63})\$/").hasMatch(value)){
                  return "Enter valid email";
                }else{
                  return null;
                }
              }, 
              ),
          padding: EdgeInsets.fromLTRB(15.0, 15, 15.0, 0),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: ElevatedButton(
            onPressed: () {
            if(forgetKey.currentState!.validate()){
              Navigator.push(context, MaterialPageRoute(builder: (context) => confirmation(),));
            }else{
              return;
            }
            },
            child: Text('Submit'),
            style: ElevatedButton.styleFrom(
            backgroundColor: Colors.pink[100]
            ),
          ),
          )
          ],
            ),
        ),),),);
  }
}

class successful extends StatelessWidget {
  const successful({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(title: Text('Successful Register'),backgroundColor: Colors.pink[100],),
      body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [ 
        Center(child: Icon(Icons.check_circle, size: 60,)),
        Center(child: Text('successfully Registered', style: TextStyle(fontSize: 50, fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),),),
      ], ),
    ),);
  }
}

class confirmation extends StatelessWidget {
  const confirmation({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(title: Text('Confirmation'),backgroundColor: Colors.pink[100],),
      body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [ 
        Center(child: Text('Verify your email address', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),),
        Center(child: Text('Welcome, Please click the button below to confirm your email address and activate your account', style: TextStyle(fontSize: 16),),),
      SizedBox(
          height: 10,
        ),
        Container(
          child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => reset(),));
          },
          child: Text('Confirm email'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.pink[100]
          ),
        ),
        )
      ],
    ),),);
  }
}

class reset extends StatelessWidget {
  final resetKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(title: Text('Reset Password'),backgroundColor: Colors.pink[100],),
      body: SingleChildScrollView(
        child:Form(key: resetKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[Container(
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'New password',
                  hintText: 'Enter new password',
                ),
                validator:(value){
                if(value!.isEmpty ||!RegExp("/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#\$^&*()_-]).{8,18}\$/").hasMatch(value)){
                  return "Enter correct Password";
                }else{
                  return null;
                }
              }, 
                obscureText: true,),
              padding: EdgeInsets.fromLTRB(15.0, 15, 15.0, 0),
          ),
          Container(
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Confirm Password',
                  hintText: 'confirm new password',
                ),
                validator:(value){
                if(value!.isEmpty ||!RegExp("/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#\$^&*()_-]).{8,18}\$/").hasMatch(value)){
                  return "Enter correct password";
                }else{
                  return null;
                }
              }, 
                obscureText: true,),
              padding: EdgeInsets.fromLTRB(15.0, 15, 15.0, 0),
          ),
              SizedBox(
            height: 10,
          ),
          Container(
            child: ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => login(),));
            },
            child: Text('submit'),
            style: ElevatedButton.styleFrom(
            backgroundColor: Colors.pink[100]
            ),
          ),
          )
            ],),
        ),),),);
  }
}