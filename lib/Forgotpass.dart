import 'package:flutter/material.dart';

class Forgotpass extends StatelessWidget {
  const Forgotpass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child:Column(
      children: [
       SizedBox(height: 200,), TextField(
              decoration: InputDecoration(
                filled: true,fillColor: const Color.fromARGB(255, 207, 203, 203),
                border: OutlineInputBorder(borderRadius:BorderRadius.circular(50) ),
                prefixIcon: Icon(Icons.email),
                hintText: "abcd@gmail.com",
              ),
          ),
          SizedBox(height: 60,),
          ElevatedButton(
              onPressed: () {},
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