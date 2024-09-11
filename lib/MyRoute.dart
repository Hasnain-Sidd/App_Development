import 'package:flutter/material.dart';

class MyRoute extends StatelessWidget {
  const MyRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Center(
                child: Text(
          "Product Details",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ))),
        body: ElevatedButton(
          child: const Text("Back to Home"),
          onPressed: () {
            Navigator.pop(context);
          },
        ));
  }
}
