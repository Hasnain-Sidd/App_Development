import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
            color: Colors.blue,
            child: const Center(
                child: Text(
                    "Hello My name is Hasnain \n I am here to learn Flutter",
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)))));
  }
}
