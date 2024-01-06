import 'package:flutter/material.dart';
import 'package:on_boarding_screen/drawer.dart';
import 'package:on_boarding_screen/navigation.dart';
import 'package:on_boarding_screen/new3.dart';
class login2page extends StatefulWidget {
  const login2page({super.key});

  @override
  State<login2page> createState() => _login2pageState();
}

class _login2pageState extends State<login2page>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.arrow_back),
              ),
SizedBox(width: size.width*0.8,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.menu),
              ),
            ],
          )
        ],
      ),
      body:  SingleChildScrollView(
        child: Column(
          children: [
            Center(child: Image.asset("assets/mango.png",scale: 1.9,)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Center(child: Text("Welcome Back ! ",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900),)),
                
            ),
            SizedBox(height: size.height*0.015,),
             SizedBox(height: size.height*0.08,
                      width: size.width*0.8,
                      child: 
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),labelText:"Enter email address",fillColor:Colors.white,filled: true),
                ),
              ),),
               SizedBox(height: size.height*0.015,),
              SizedBox(height: size.height*0.08,
                      width: size.width*0.8,
                      child: 
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),labelText:"Choose your username",fillColor:Colors.white,filled: true),
                ),
              ),), SizedBox(height: size.height*0.015,),
               SizedBox(height: size.height*0.08,
                      width: size.width*0.8,
                      child: 
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),labelText:"Enter Password",suffixIcon: Icon(Icons.remove_red_eye_outlined),fillColor:Colors.white,filled: true),
                ),
              ),), SizedBox(height: size.height*0.015,),
               SizedBox(height: size.height*0.08,
                      width: size.width*0.8,
                      child: 
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),labelText:"Re Enter Password",suffixIcon: Icon(Icons.remove_red_eye_outlined),fillColor:Colors.white,filled: true),
                ),
              ),),
             
               SizedBox(height: size.height*0.015,),
              Text("Have an account?",style: TextStyle(color: const Color.fromARGB(255, 70, 69, 69),fontSize: 25,fontWeight: FontWeight.w900),),
              SizedBox(height: size.height*0.015,),
               GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Example()));
                },
                 child: Container(
                           height: size.height*0.04,
                            width: size.width*0.25,
                            decoration: BoxDecoration(color: const Color.fromARGB(255, 70, 69, 69),borderRadius: BorderRadius.circular(20)),
                           child: 
                           Center(child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 18),)), 
                            ),
               ),
            ]),
      ),
    );
  }
}
 