import 'package:flutter/material.dart';
import 'package:on_boarding_screen/login2.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
      final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 213, 219, 137),
      appBar: AppBar(
        backgroundColor:  Color.fromARGB(255, 213, 219, 137),
        actions: [

          Row(
          
            children: [
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Icon(Icons.arrow_back),
//               ),
// SizedBox(width: size.width*0.5,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.menu),
              ),
            ],
          )
        ],
      ),
      body:  Column(
        children: [
          Center(child: Image.asset("assets/pinneaple.png",scale: 2,)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Center(child: Text("Welcome Back ! ",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900),)),
              
          ),
          SizedBox(height: size.height*0.015,),
           SizedBox(height: size.height*0.09,
                    width: size.width*0.8,
                    child: 
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),labelText:"Username",fillColor:Colors.white,filled: true),
              ),
            ),),
             SizedBox(height: size.height*0.015,),
            SizedBox(height: size.height*0.09,
                    width: size.width*0.8,
                    child: 
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),labelText:"Password",suffixIcon: Icon(Icons.remove_red_eye_outlined),fillColor:Colors.white,filled: true),
              ),
            ),),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Reset Password",style: TextStyle(color: Colors.red),),
                ],
              ),
            ),
             SizedBox(height: size.height*0.015,),
            Text("New here?",style: TextStyle(color: const Color.fromARGB(255, 70, 69, 69),fontSize: 25,fontWeight: FontWeight.w900),),
             SizedBox(height: size.height*0.015,),
             GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>login2page()));

              },
               child: Container(
                         height: size.height*0.06,
                          width: size.width*0.45,
                          decoration: BoxDecoration(color: const Color.fromARGB(255, 70, 69, 69),borderRadius: BorderRadius.circular(20)),
                         child: 
                         Center(child: Text("Register",style: TextStyle(color: Colors.white,fontSize: 18),)), 
                          ),
             ),
          ]),
    );
  }
}