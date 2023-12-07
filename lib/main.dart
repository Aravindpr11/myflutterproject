import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( //to attach widget tree to ui
      MaterialApp( //material theme
        home: FirstProgram(), //initial page
      ));
}

class FirstProgram extends StatelessWidget {
  //simple method stles = > statelesswidget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          //title: Text("Apr"),
          title: Text("My First program",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)
      ),
      //body: Center(child: Icon(Icons.favorite,color: Colors.red,size: 65.1,),),
      body:Center(
    child:

    Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Image(image: AssetImage("assets/images/google.png")),
          Image.asset("assets/images/logo.png",height: 200,width: 350,),
          Image.network(
              "https://www.istockphoto.com/photo/abstract-natural-background-of-soft-plants-cortaderia-selloana-pampas-grass-on-a-gm1370505531-440044057?utm_source=pixabay&utm_medium=affiliate&utm_campaign=SRP_image_sponsored&utm_content=https%3A%2F%2Fpixabay.com%2Fimages%2Fsearch%2Fnature%2F&utm_term=nature"
          ),


          Row(mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Icon(Icons.favorite,color: Colors.red,size: 65,),
              Icon(Icons.person,color: Colors.blue,size: 65,)
            ],
          ),

          Text("Heart",
            style: TextStyle(fontSize: 63,fontWeight: FontWeight.bold),)],),

      ));
  }
}


