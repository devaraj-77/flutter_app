import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

Future<void> signup({
  required String name,
  required String email,
  required String password,
  required String confirmpassword,
  required BuildContext context,
}) async {
  try {
    UserCredential userdetails = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
    User? user = userdetails.user;
    await FirebaseFirestore.instance.collection("datas").doc(user?.uid).set({
      "name": name,
      "email": email,
    });
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text("Account created successfully")));
  } catch (e) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(e.toString())));
  }
}
Future<void> signin({
  required String email,
  required String password,
  required BuildContext context,

}) async{
  try{
await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("login successfull")));
  } catch(e){
   ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(e.toString())));  
  }
}
Future<void> resetlink({
  required String email,
  required BuildContext context,
})
async{
  try{
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("check your mail inbox")));
  } 
  catch(e){
   ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(e.toString())));  
  }
}

