import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myflutterproject/decoration/Screens/home.dart';
import 'package:myflutterproject/decoration/Screens/signup.dart';

class Login extends StatelessWidget {
  final uname_ctrl=TextEditingController();
  final pwd_ctrl=TextEditingController();

  String Username = "Arvin11@gmail.com";
  String password = "123456";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("login"),),
      body: Column(
        children: [
          Image.asset("assets/images/instagram.png",height: 50,width: 50,),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: uname_ctrl,
              decoration: InputDecoration(
                hintText: "User name",
                helperText: "Username should be an email",
                labelText: "Username",
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30)
                ),
              ),
            ),

          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: pwd_ctrl,obscureText: true,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                hintText: "Password",
                helperText: "Only 3 time attempt",
                labelText: "Password",
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.remove_red_eye_sharp),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30)
                )
              ),
            ),
          ),
          ElevatedButton(onPressed: (){
            if(uname_ctrl.text !="" && pwd_ctrl != ""){
              if(uname_ctrl.text== Username && pwd_ctrl.text== password){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Home()));
              }
              else{
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:
                Text("Username and password is not correct"),backgroundColor: Colors.red,));
              }

            }
            else{
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:
              Text("Username and password should not be null"),backgroundColor: Colors.red,));
            }

          }, child: Text("Login")),
          TextButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SignUp()));
          }, child:  Text("Not a user..... Register here",
            style: GoogleFonts.pacifico(color: Colors.black,fontStyle: FontStyle.italic)
          )),
        ],
      ),
    );
  }
}


