import 'package:flutter/material.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(child: Image.asset("assets/banana.png",scale: 2,)),
          SizedBox(
            height: size.height * 0.05,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Text(
                  "Order Your Favorites ",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
                  Text(
                  "Fruits ",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
                  SizedBox(
              height: size.height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                  "Fruit is one of the incredients to keep our body which helps our body to prevent diseases. Here you can purchase wide variety of fruits."),
            ),
            SizedBox(
              height: size.height * 0.06,
            ),
                  GestureDetector(
              onTap: () {
               
              },
              child: Container(
                height: size.height * 0.06,
                width: size.width * 0.45,
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                    child: Text(
                  "Get Start",
                  style: TextStyle(color: Colors.white),
                )),
              ),
            )
              ],
            ),
          ),
          
        
    
        ],
      ),
    );
  }
}
