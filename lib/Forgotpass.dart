import 'package:dev_project/Services.dart';
import 'package:flutter/material.dart';

class Forgotpass extends StatefulWidget {
  const Forgotpass({super.key});

  @override
  State<Forgotpass> createState() => _ForgotpassState();
}

class _ForgotpassState extends State<Forgotpass> {
  TextEditingController emailcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child:Column(
      children: [
       SizedBox(height: 200,), TextField(
        controller: emailcontroller,
              decoration: InputDecoration(
                filled: true,fillColor: const Color.fromARGB(255, 207, 203, 203),
                border: OutlineInputBorder(borderRadius:BorderRadius.circular(50) ),
                prefixIcon: Icon(Icons.email),
                hintText: "abcd@gmail.com",
              ),
          ),
          SizedBox(height: 60,),
          ElevatedButton(
              onPressed: () {
                resetlink(email: emailcontroller.text.trim() , context: context);
              },
              child: Text(
                "SEND RESET LINK",
                style: TextStyle(
                  color: const Color.fromARGB(255, 239, 239, 240),
                ),
              ),
              style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 15, 16, 16)),
            ),
       ]
    ),
    ),
    );
  }
}