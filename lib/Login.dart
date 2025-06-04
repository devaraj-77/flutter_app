import 'package:dev_project/Register.dart';
import 'package:dev_project/loginpage.dart';
import 'package:flutter/material.dart';

class login extends StatelessWidget {
  login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Column(
        children: [
          SizedBox(height: 40),
          Text(
            "welcome",
            style: TextStyle(
              color: const Color.fromARGB(255, 13, 13, 13),
              fontWeight: FontWeight.bold,
              fontSize: 40,
            ),
          ),
         Image.network(
            "https://1000logos.net/wp-content/uploads/2017/02/Instagram-app-logo.jpg",
          ),
          SizedBox(height: 30,),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => loginpage()));
            },
            child: Text("login"),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(235, 13, 13, 13),
              foregroundColor: const Color.fromARGB(243, 245, 244, 244),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(25),
              ),
              minimumSize: Size(double.infinity, 50),
            ),
          ), 
          SizedBox(height:30),
       ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Register()));
            },
            child: Text("Sign up"),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(235, 13, 13, 13),
              foregroundColor: const Color.fromARGB(243, 245, 244, 244),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(25),
              ),
              minimumSize: Size(double.infinity, 50),
            ),
          ),
        ],
      ),
    );
  }
}
