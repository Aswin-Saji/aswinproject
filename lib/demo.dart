// import 'package:flutter/material.dart';
// import 'package:on_boarding_screen/login.dart';
// import 'package:on_boarding_screen/new.dart';
// import 'package:on_boarding_screen/new2.dart';
// import 'package:on_boarding_screen/new3.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// class OnBoardingScreen extends StatefulWidget {
//   const OnBoardingScreen({super.key});

//   @override
//   State<OnBoardingScreen> createState() => _OnBoardingScreenState();
// }

// class _OnBoardingScreenState extends State<OnBoardingScreen> {
  
//   final controller=PageController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
      
//       body:PageView(
//         controller: controller,
//         children: [
        // Container(
        //   padding: EdgeInsets.only(bottom: 80),
        //   child: Container(
        //     color: Colors.red,
        //     child: Center(child: const Text("PAGE 1",style: TextStyle(fontSize: 80,color: Colors.white),)),
        //   ),
        // ),
//         orangescreen(),
//         applescreen(),
//         DashBoardScreen(),
//         loginpage(),
          // Container( padding: EdgeInsets.only(bottom: 80),
          //   child: Container(
          //   color: Colors.green,
          //    child: Center(child: const Text("PAGE 2",style: TextStyle(fontSize: 80,color: Colors.white),)),
          //         ),
          // ),
          // Container( padding: EdgeInsets.only(bottom: 80),
          //   child: Container(
          //   color: Colors.yellow,
          //    child: Center(child: const Text("PAGE 3",style: TextStyle(fontSize: 80,color: Colors.white),)),
          //         ),
          // )
//       ]) ,
//       bottomSheet: Container(
//         color: Colors.white,
//         child: Padding(padding: EdgeInsets.only(bottom: 30),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//           TextButton(onPressed: ()=> controller.previousPage(duration: Duration(milliseconds: 500), curve: Curves.easeInOut),
//            child:const Text("back",style: TextStyle(color: Color.fromARGB(255, 29, 114, 32),fontSize: 20),)),
//           SmoothPageIndicator(controller: controller, count: 3,effect: WormEffect(dotColor: Colors.grey),),

//           TextButton(onPressed: ()=> controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeInOut),
//            child:const Text("next",style: TextStyle(color: Color.fromARGB(255, 29, 114, 32),fontSize: 20),))
//           ],
//         ),
//         ),

//       )
//     );
//   }
// }
// 
import 'package:flutter/material.dart';
import 'package:on_boarding_screen/login.dart';
import 'package:on_boarding_screen/new.dart';
import 'package:on_boarding_screen/new2.dart';
import 'package:on_boarding_screen/new3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ImageScreen extends StatefulWidget {
  const ImageScreen({super.key});

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  final controller = PageController();
  bool isLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(bottom: 80),
        child: PageView(
          onPageChanged: (index) {
            setState(() => isLastPage = index == 2);
          },
          controller: controller,
          children: [
            // Container(
            //   color: Colors.white,
            //   child: Center(
            //       child: Column(
            //     children: [
            //       Center(
            //         child: Image.asset('assets/image1.png'),
            //       ),
            //       Image.asset(
            //         'assets/1.png',
            //         color: Colors.red,
            //         scale: 2,
            //       )
            //     ],
            //   )),
            // ),
            // Container(
            //   color: Colors.white,
            //   child: Center(
            //       child: Column(
            //     children: [
            //       SizedBox(height: 20),
            //       Center(
            //         child: Image.asset('assets/image2.png'),
            //       ),
            //       const SizedBox(height: 130),
            //       Padding(
            //         padding: const EdgeInsets.only(right: 10),
            //         child: Image.asset(
            //           'assets/1.png',
            //           color: Colors.red,
            //           scale: 2,
            //         ),
            //       )
            //     ],
            //   )),
            // ),
            // Container(
            //   color: Colors.white,
            //   child: Center(
            //       child: Column(
            //     children: [
            //       const SizedBox(height: 70),
            //       Center(
            //         child: Image.asset(
            //           'assets/image3.png',
            //           scale: 2,
            //         ),
            //       ),
            //       const SizedBox(height: 130),
            //       Padding(
            //         padding: const EdgeInsets.only(left: 30),
            //         child: Image.asset(
            //           'assets/1.png',
            //           color: Colors.red,
            //           scale: 2,
            //         ),
            //       )
            //     ],
            //   )),
            // ),
orangescreen(),
applescreen(),
DashBoardScreen(),


          ],
        ),
      ),
      bottomSheet: isLastPage
          ? TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const loginpage()));
              },
              style: TextButton.styleFrom(
                   shape: RoundedRectangleBorder(
                     ),
                  backgroundColor: const Color.fromARGB(255, 231, 138, 0),
                  minimumSize: const Size.fromHeight(80)),
              child: const Text(
                'GET STARTED',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white),
              ),
            )
          : Container(
              color: const Color.fromARGB(255, 255, 250, 250),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {
                        controller.jumpToPage(2);
                      },
                      child: const Text('SKIP')),
                  Center(
                    child: SmoothPageIndicator(
                      controller: controller,
                      count: 3,
                      effect: WormEffect(
                        spacing: 16,
                        dotColor: Colors.black26,
                        activeDotColor: Colors.teal.shade700,
                      ),
                      onDotClicked: (index) => controller.animateToPage(index,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeIn),
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        controller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut);
                      },
                      child: const Text('NEXT'))
                ],
              ),
            ),
    );
  }
}
