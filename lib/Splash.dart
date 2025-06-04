import 'package:dev_project/Login.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds:3),() {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => login()
      ),);
    });
  }
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
