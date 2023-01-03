import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginfire/screen/home/view/home_screen.dart';
import 'package:loginfire/screen/login_signup_forgotPassworf/login_screen.dart';



void main()
{
  runApp(
      GetMaterialApp(
        locale: Get.deviceLocale,
        debugShowCheckedModeBanner: false,
    routes: {
      '/': (context)  => LoginScreen(),
      'home': (context)  => HomeScreen(),

    },
  ));
}