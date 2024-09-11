import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Product_Details extends StatelessWidget {
  final String name;
  final int quantity;
  final int price;
  const Product_Details(
      {Key? key,
      required this.name,
      required this.quantity,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.purple,
          title: const Center(
              child: Text(
            "Product Details",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ))),
      body: Column(
        children: [
          Text("Product Name: $name", style: TextStyle(fontSize: 15)),
          Text("Quantity: $quantity rs", style: TextStyle(fontSize: 15)),
          Text("Price: $price rs", style: TextStyle(fontSize: 15)),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Back To Home"))
        ],
      ),
    );
  }
}
