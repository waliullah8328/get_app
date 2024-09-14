import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get_app/login_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Screen"),),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 80,),
            ElevatedButton(onPressed: (){
              Get.snackbar("Successful", "Successfully submitted");
            }, child: Text("Sancbar",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Get.defaultDialog(
                  title: "Alert Dialog?",
                cancel: Text("Cancel",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                confirm:  Text("Confirm",style: TextStyle(fontSize: 15),),
                cancelTextColor: Colors.blue,
                confirmTextColor: Colors.green,
                onCancel: (){Get.back();},
                onConfirm: (){
                    Get.back();
                },
                middleText: "Are you sure, want to exit?",
                content: Column(
                  children: [
                    Text("1"),
                    Text("2"),
                    Text("3"),
                    Text("4"),
                    Text("5"),
                    Text("6"),
                  ],
                )
              );
            }, child: Text("Dialog Box",style: TextStyle(fontSize: 25),)),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Get.bottomSheet(
                Container(
                  child: Text("This is bottom sheet"),
                  color: Colors.orange,

                ),
                //barrierColor: Colors.purple,



                
              );
            }, child: Text("Bottom Sheet",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),

            SizedBox(height: 30,),
            ElevatedButton(onPressed: (){
              //Get.to(LoginScreen());
              Get.offNamed("/login");
            }, child: Text("Login")),
          ],
        ),
      ),
    );
  }
}
