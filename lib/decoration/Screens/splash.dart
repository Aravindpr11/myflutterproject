import 'dart:async';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myflutterproject/decoration/Screens/login.dart';

void main(){
  runApp(MaterialApp(home:Splash(),));

}

class Splash extends StatefulWidget{
  //const Splash({Key? key}) : super(key: key);
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash>{
  @override
  void initSate(){
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => Login()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/black.png"),fit: BoxFit.fill)),
          child: Center(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset("assets/images/instagram (2).png",
    height: 100, width: 50,),
      Text("Welcome to Instagram",style: GoogleFonts.pacifico(color: Colors.white,fontStyle: FontStyle.italic),
      )
    ],
    ),
    ),
      ) );
  }
}

