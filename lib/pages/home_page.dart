import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Signed in as: ' + user!.email!),
          // password : pass123
          MaterialButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
            },
            color: Colors.deepPurple[200],
            child: Text('Sign out'),
          ),
        ],
      )),
    );
  }
}
