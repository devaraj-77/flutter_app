import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Center(child: Lottie.asset('assets/anime.json')),
        SizedBox(height: 60,),
        Text("meta",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w900,fontSize: 34 ),)],
      ),
    );
  }
}
