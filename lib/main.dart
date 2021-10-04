import 'package:flutter/material.dart';
// import 'package:myfirstproject/screens/bottom-navigation-example.dart';
// import 'package:myfirstproject/screens/counter.dart';
// import 'package:project_3/screens/home.dart';
// import 'package:project_3/screens/edit_profile.dart';
// import 'package:project_3/screens/account.dart';
import 'package:get/get.dart';
import 'package:education_app/screens/login-students.dart';
import 'package:education_app/screens/home-students.dart';
import 'package:education_app/screens/home-instructor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Education App',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: HomeStudentScreen(),
    );
  }
}
