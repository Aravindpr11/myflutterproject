import 'package:flutter/material.dart';

import 'home.dart';

 class SignUp extends StatefulWidget {
  @override
  State<SignUp>createState()=>_SignupState();
}

class _SignupState extends State<SignUp> {
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("SignUp")),
      body: Form(
        key: formkey,
          child: Column(
            children: [
              Image.asset("assets/images/instagram.png",height: 50,width: 50,),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  validator: (email){
                    if(email!.isEmpty || email.contains("@")){
                      return"Enter a valid email id";
                    }
                    else return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)
                    )
                  ),
                ),

              ),
              ElevatedButton(onPressed:(){
                var isValid=formkey.currentState!.validate();
                if(isValid == true){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Home()));
                }
              }, child: Text("Signup"))
            ],
            
          )),
    );
  }
}

