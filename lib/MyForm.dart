import 'package:flutter/material.dart';

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailc = TextEditingController();
    final TextEditingController passc = TextEditingController();
    final TextEditingController confirmpassc = TextEditingController();

    return Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text("Online Form",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold))),
          backgroundColor: Colors.purple,
        ),
        body: Form(
            key: _formkey,
            child: Column(
              children: [
                TextFormField(
                    controller: emailc,
                    decoration: const InputDecoration(
                        border: UnderlineInputBorder(), labelText: "Email"),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter a valid email";
                      } else if (!value.contains("@") &&
                          !value.contains(".com")) {
                        return "Enter a valid email";
                      } else if (!RegExp(r"^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$")
                          .hasMatch(value)) {
                        return "Enter a valid email";
                      }
                    }),
                TextFormField(
                    controller: passc,
                    decoration: const InputDecoration(
                        border: UnderlineInputBorder(), labelText: "Password"),
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please Enter a password";
                      } else if (value.length < 8) {
                        return "Please enter a password of atleast 8 characters";
                      }
                      return null;
                    }),
                TextFormField(
                    controller: confirmpassc,
                    decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: "Confirm Password"),
                    obscureText: true,
                    validator: (value) {
                      if (value != passc.text) {
                        return "Password is incorrect";
                      }
                    }),
                ElevatedButton(
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        print("Submitted");
                      }
                    },
                    child: const Text("Sign Up"))
              ],
            )));
  }
}
