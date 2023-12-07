import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GradientEx extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
    //  appBar: AppBar(title: Text("Gradient"),),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/90084.jpg")),
          fit: BoxFit.fill
         // gradient: LinearGradient(colors: [
           // Colors.blueAccent,
            //Colors.blue,
            //Colors.redAccent,
            //Colors.orangeAccent,
         // ],begin: Alignment.bottomRight,
          //end: Alignment.topLeft)
        ),
        child: Center(
        child: Column(
          children: [
            Image.asset("assets/images/google.png"),

            Text("My Application",style: TextStyle(fontSize: 35,fontStyle: FontStyle.italic),)
          ],
        ),
      ),
      ));
  }
}
void main(){
  runApp(MaterialApp(home: GradientEx(),));
}