import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:education_app/screens/home-students.dart';
import 'package:education_app/screens/student-profile.dart';
import 'package:education_app/screens/login-students.dart';
import 'package:education_app/screens/signup-students.dart';
import 'package:education_app/screens/home-instructor.dart';
import 'package:education_app/screens/login-instructor.dart';
import 'package:education_app/screens/signup-instructor.dart';

class CustomSideBar extends StatelessWidget {
  const CustomSideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Home Student"),
                    onTap: () {
                      Get.to(HomeStudentScreen());
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Change Profile Information"),
                    onTap: () {
                      Get.to(EditProfileScreen());
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Login Students"),
                    onTap: () {
                      Get.to(LoginScreen());
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Sign Up Students"),
                    onTap: () {
                      Get.to(SignUpScreen());
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Home Instructor"),
                    onTap: () {
                      Get.to(HomeInstructorScreen());
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Login Instructor"),
                    onTap: () {
                      Get.to(LoginInstructorScreen());
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Sign Up Instructor"),
                    onTap: () {
                      Get.to(SignUpInstructorScreen());
                    },
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 40,
            child: Text("version 2.0"),
          )
        ],
      ),
    );
  }
}
