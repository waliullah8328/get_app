import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login screen"),),
      body: Column(
        children: [
          TextButton(onPressed: (){
            Get.toNamed("/");
          }, child: const Text("HomeScreen")),
        ],
      ),
    );
  }
}
