import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerDec extends StatelessWidget{

  @override

  Widget build(BuildContext){
    return Scaffold(

      appBar: AppBar(
        title: Text("Container Decoration"),
      ),
      body: Container(
      width: 100,                   //double.infinity,
        height: 100,
      decoration: BoxDecoration(
        color: Colors.yellow,
          image: DecorationImage(
              image: AssetImage("assets/images/90084.jpg"),
              fit: BoxFit.fill)),

      //color: Colors.amber,
        child: Icon(Icons.favorite,size: 65,color: Colors.white,
        ),
    )
    );
  }
}


void main(){
  runApp(MaterialApp(home:ContainerDec(),));
}