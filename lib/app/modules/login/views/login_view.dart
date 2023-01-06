import 'dart:ffi';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 25),
        children: [
          Container(
              height: 150,
              child: Image.asset(
                "assets/logo/logo-only.png",
                fit: BoxFit.contain,
              )),
          TextField(
            cursorColor: Colors.black87,
            decoration: InputDecoration(
              label: Text(
                "Email",
                style: TextStyle(color: Colors.black87, fontSize: 18),
              ),
              border: InputBorder.none,
              fillColor: Color(0xfff6f7fa),
              filled: true,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            obscureText: true,
            cursorColor: Colors.black87,
            decoration: InputDecoration(
              label: Text(
                "Password",
                style: TextStyle(color: Colors.black87, fontSize: 18),
              ),
              border: InputBorder.none,
              fillColor: Color(0xfff6f7fa),
              filled: true,
              suffixIcon: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.remove_red_eye_outlined,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: Get.width,
            child: ElevatedButton(
              onPressed: () => Get.offAllNamed(Routes.HOME),
              child: Text("Log In"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffec5f5f),
                padding: EdgeInsets.symmetric(vertical: 20),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {},
            child: Text("Forgot Password?"),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 20),
                  height: 1,
                  color: Color(0xffc7c9d9),
                ),
              ),
              Text(
                "or",
                style: TextStyle(color: Color(0xffc7c9d9)),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 20),
                  height: 1,
                  color: Color(0xffc7c9d9),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: Get.width,
            child: ElevatedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/icons/fb.png"),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Log In With Facebook"),
                ],
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff0082cd),
                padding: EdgeInsets.symmetric(vertical: 20),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: Get.width,
            child: ElevatedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/icons/google.png"),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Log In With Google",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffc7c9d9),
                padding: EdgeInsets.symmetric(vertical: 20),
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an account ?",
                style: TextStyle(
                  color: Colors.black54,
                ),
              ),
              TextButton(onPressed: () {}, child: Text("Sign Up"))
            ],
          )
        ],
      ),
    ));
  }
}
