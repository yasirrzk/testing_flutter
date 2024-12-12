import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login"),),
      body: Column(children: [
        TextField(
          key: const Key("username"),
          decoration: InputDecoration(label: Text("Username")),
        ),
        TextField(
          key: const Key("password"),
          decoration: InputDecoration(label: Text("Password")),
        ),
        ElevatedButton(
            key: const Key("btn_login"),
            onPressed: (){}, child: Text("Login"))
      ],),
    );
  }
}