import 'package:flutter/material.dart';
import 'package:flutter_application_1/MyForm.dart';
import 'package:flutter_application_1/MyRoute.dart';
import 'package:flutter_application_1/Product_Details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/home": (context) => const HomeSceen(),
      },
      initialRoute: '/home',
    );
  }
}

class HomeSceen extends StatelessWidget {
  const HomeSceen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text("Explore Widgets",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold))),
          backgroundColor: Colors.purple,
        ),
        body: Column(children: [
          Expanded(
              child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              ListTile(
                title: const Text("Car"),
                onTap: () {
                  //ScaffoldMessenger.of(context).showSnackBar(
                  //const SnackBar(
                  // content: Text("Quantity: 5, Price: 100000rs"),
                  //duration: Duration(seconds: 2),
                  //  ),
                  //);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Product_Details(
                              name: 'Car', quantity: 10, price: 100000)));
                },
              ),
              ListTile(
                  title: const Text("Mobile"),
                  onTap: () {
                    // ScaffoldMessenger.of(context).showSnackBar(
                    // const SnackBar(
                    // content: Text("Quantity:10       Price:10000rs"),
                    // duration: Duration(seconds: 2),
                    // ),
                    // );
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Product_Details(
                                name: 'Mobile', quantity: 100, price: 10000)));
                  }),
              ListTile(
                  title: const Text("Furniture"),
                  onTap: () {
                    //  ScaffoldMessenger.of(context).showSnackBar(
                    //  const SnackBar(
                    //  content: Text("Quantity:15       Price:1000rs"),
                    ///  duration: Duration(seconds: 2),
                    // ),
                    // );
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Product_Details(
                                name: 'Furniture', quantity: 39, price: 1000)));
                  }),
              ListTile(
                  title: const Text("Sports Wear"),
                  onTap: () {
                    //  ScaffoldMessenger.of(context).showSnackBar(
                    //  const SnackBar(
                    //  content: Text("Quantity:25      Price:1000rs"),
                    // duration: Duration(seconds: 2),
                    // ),
                    // );
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Product_Details(
                                name: 'Sports Wear',
                                quantity: 70,
                                price: 100)));
                  }),
              ListTile(
                  title: const Text("Books"),
                  onTap: () {
                    // ScaffoldMessenger.of(context).showSnackBar(
                    // const SnackBar(
                    //   content: Text("Quantity:30       Price:5000rs"),
                    // duration: Duration(seconds: 2),
                    // ),
                    // );

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Product_Details(
                                name: 'Books', quantity: 48, price: 1000)));
                  }),
            ],
          )),
          ElevatedButton(
              child: const Text("Add Product"),
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const MyCustomForm()));
              }),
        ]));
  }
}
