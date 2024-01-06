
import 'package:flutter/material.dart';
import 'package:on_boarding_screen/drawermenu.dart';
import 'package:on_boarding_screen/login.dart';



class aswin extends StatefulWidget {
  const aswin({super.key});

  @override
  State<aswin> createState() => _aswinState();
}

class _aswinState extends State<aswin> {
  double translateX = 0.0;
  double translateY = 0.0;
  double scale = 1;
  bool toogle = false;



  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;




    return Stack(children: [
      DrawerMenu(),
      AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        transform: Matrix4.translationValues(translateX, translateY, 0)
          ..scale(scale),
        child: ClipRRect(
          borderRadius:
              (toogle) ? BorderRadius.circular(20) : BorderRadius.circular(0),
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: const Color.fromARGB(255, 229, 235, 240),
              leading: IconButton(
                  onPressed: () {
                    toogle = !toogle;
                    if (toogle) {
                      translateX = 200;
                      translateY = 80;
                      scale = 0.8;
                    } else {
                      translateX = 0.0;
                      translateY = 0.0;
                      scale = 1;
                    }
                    setState(() {});
                    print(toogle);
                  },
                  icon: const Icon(
                    Icons.menu,
                    color: Color.fromARGB(255, 7, 6, 6),
                  )),
              title:  Row(
            children: [
              Text("Good",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
            
                 Text("Morning!",style: TextStyle(color: Color.fromARGB(255, 251, 151, 0),fontSize: 30,fontWeight: FontWeight.bold),),
                
                SizedBox(width: size.width*0.195,),
                  TextButton(
      onPressed: () => showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Logout'),
          content: const Text('Do you want to logout'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>loginpage())),
              child: const Text('OK'),
            ),
          ],
        ),
      ), child: Icon(Icons.logout,color: Color.fromARGB(255, 249, 94, 5),),)
            ],
          )
            ),
            body:SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hi Aswin!",
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Text(
                      "Find fresh fruits what you want",
                      style: TextStyle(),
                    ),
                    SizedBox(
                      height: size.height * 0.015,
                    ),
                    SizedBox(
                      height: size.height * 0.08,
                      width: size.width * 0.9,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              fillColor: Color.fromARGB(255, 231, 231, 231),
                              filled: true,
                              labelText: "Search fresh fruits",
                              prefixIcon: Icon(Icons.search)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.025,
                    ),
                    Row(
                      children: [
                        Text(
                          "Recommended",
                          style:
                              TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        SizedBox(
                          width: size.width * 0.45,
                        ),
                        Text(
                          "View All",
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.015,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: size.height * 0.3,
                          width: size.width * 0.39,
                          decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(40))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                "assets/banana.png",
                                scale: 3,
                              ),
                              Text(
                                "Banana",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "People went bananas with boredom. Adamson's going to go bananas on this one. The plate of fruit ",
                                  style:
                                      TextStyle(fontSize: 8, color: Colors.white),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "₹100 per gram",
                                      style: TextStyle(
                                          fontSize: 8, color: Colors.white),
                                    ),
                                    Icon(
                                      Icons.favorite,
                                      color: Colors.white,
                                      size: 12,
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: size.height * 0.02,
                                width: size.width * 0.15,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: Text(
                                    "Buy now",
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: size.height * 0.3,
                          width: size.width * 0.39,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(40))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                "assets/apple.png",
                                scale: 13,
                              ),
                              Text(
                                "Apple",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "People went bananas with boredom. Adamson's going to go bananas on this one. The plate of fruit ",
                                  style:
                                      TextStyle(fontSize: 8, color: Colors.white),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "₹200 per gram",
                                      style: TextStyle(
                                          fontSize: 8, color: Colors.white),
                                    ),
                                    Icon(
                                      Icons.favorite,
                                      color: Colors.white,
                                      size: 12,
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: size.height * 0.02,
                                width: size.width * 0.15,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: Text(
                                    "Buy now",
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: size.height * 0.3,
                          width: size.width * 0.39,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 51, 144, 54),
                              borderRadius:
                                  BorderRadius.only(topRight: Radius.circular(40))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                "assets/pinneaple.png",
                                scale: 3.9,
                              ),
                              Text(
                                "Pinneaple",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "People went bananas with boredom. Adamson's going to go bananas on this one. The plate of fruit ",
                                  style:
                                      TextStyle(fontSize: 8, color: Colors.white),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "₹100 per gram",
                                      style: TextStyle(
                                          fontSize: 8, color: Colors.white),
                                    ),
                                    Icon(
                                      Icons.favorite,
                                      color: Colors.white,
                                      size: 12,
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: size.height * 0.02,
                                width: size.width * 0.15,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: Text(
                                    "Buy now",
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: size.height * 0.3,
                          width: size.width * 0.39,
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius:
                                  BorderRadius.only(topLeft: Radius.circular(40))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                "assets/mango.png",
                                scale: 4.5,
                              ),
                              Text(
                                "Mango",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "People went bananas with boredom. Adamson's going to go bananas on this one. The plate of fruit ",
                                  style:
                                      TextStyle(fontSize: 8, color: Colors.white),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "₹200 per gram",
                                      style: TextStyle(
                                          fontSize: 8, color: Colors.white),
                                    ),
                                    Icon(
                                      Icons.favorite,
                                      color: Colors.white,
                                      size: 12,
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: size.height * 0.02,
                                width: size.width * 0.15,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: Text(
                                    "Buy now",
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: size.height * 0.08,
                          width: size.width * 0.45,
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Best 50+ Fresh fruits",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                height: size.height * 0.03,
                                width: size.width * 0.15,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: Text(
                                    "Go",
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          
          )
           
          ),
        ),
      ),
    ]);
  }
}
