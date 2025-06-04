import 'package:dev_project/Services.dart';
import 'package:dev_project/loginpage.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confirmpasswordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Sign Up now",
              style: TextStyle(
                color: const Color.fromARGB(255, 13, 13, 13),
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
            SizedBox(height: 30),
            TextField(
              controller: namecontroller,
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromARGB(255, 207, 203, 203),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                prefixIcon: Icon(Icons.person),
                hintText: "Enter your name",
              ),
            ),
            SizedBox(height: 30),
            TextField(
              controller: emailcontroller,
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromARGB(255, 207, 203, 203),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                prefixIcon: Icon(Icons.email),
                hintText: "abcd@gmail.com",
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: passwordcontroller,
              obscureText: true,
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromARGB(255, 203, 201, 201),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                prefixIcon: Icon(Icons.visibility_off),
                hintText: "Enter Password",
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: confirmpasswordcontroller,
              obscureText: true,
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromARGB(255, 203, 201, 201),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                prefixIcon: Icon(Icons.visibility_off),
                hintText: "Confirm Password",
              ),
            ),
            ElevatedButton(
        
               onPressed: () {
  signup(
    name: namecontroller.text.trim(),
    email: emailcontroller.text.trim(),
    password: passwordcontroller.text.trim(),
    confirmpassword: confirmpasswordcontroller.text.trim(),
    context: context,
  );
},

            
              child: Text(
                "Sign UP",
                style: TextStyle(
                  color: const Color.fromARGB(255, 239, 239, 240),
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 15, 16, 16),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(color: Colors.black),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("login", style: TextStyle(fontSize: 20)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
