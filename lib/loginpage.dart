import 'package:dev_project/Forgotpass.dart';
import 'package:dev_project/Login.dart';
import 'package:dev_project/Register.dart';
import 'package:dev_project/Services.dart';
import 'package:flutter/material.dart';

class loginpage extends StatefulWidget {
  loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "loginpage",
              style: TextStyle(
                color: const Color.fromARGB(255, 13, 13, 13),
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
            SizedBox(height: 30),
            TextField(
              controller: emailcontroller,
              decoration: InputDecoration(
                filled: true,fillColor: const Color.fromARGB(255, 207, 203, 203),
                border: OutlineInputBorder(borderRadius:BorderRadius.circular(50) ),
                prefixIcon: Icon(Icons.email),
                hintText: "abcd@gmail.com",
              ),
               ),
               SizedBox(height: 20,),
            TextField(
              controller: passwordcontroller,
              obscureText: true,
              decoration: InputDecoration(filled: true,
              fillColor: const Color.fromARGB(255, 203, 201, 201),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                prefixIcon: Icon(Icons.visibility_off),
                hintText: "Enter Password",
              ),
            ),
            TextButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Forgotpass()));}, child: Text("Forgot password")),
            ElevatedButton(
              onPressed: () {
                signin(email: emailcontroller.text.trim(), password: passwordcontroller.text.trim(), context: context);
              },
              child: Text(
                "LOGIN",
                style: TextStyle(
                  color: const Color.fromARGB(255, 239, 239, 240),
                ),
              ),
              style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 15, 16, 16)),
            ),
            Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                Text(
                  "I dont have an account",
                  style: TextStyle(color: Colors.black),
                ),TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Register()));

                }, child: Text("Sign up",style: TextStyle(fontSize: 20),))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
