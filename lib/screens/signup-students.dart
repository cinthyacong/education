import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:education_app/screens/login-students.dart';

var imageURL = "assets/ks-logo.png";

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

// class _ContactScreenState extends State<ContactScreen> {
//   TextEditingController _nameCtrl = TextEditingController();
//   TextEditingController _emailCtrl = TextEditingController();
//   TextEditingController _phoneCtrl = TextEditingController();

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text(
              "KSQUARE UNIVERSITY",
              style: TextStyle(
                fontSize: 16,
                color: Colors.blueGrey.shade200,
              ),
            ),
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.blueGrey.shade200),
              onPressed: () => Get.to(LoginScreen()),
            )

            // centerTitle: true,
            ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(children: <Widget>[
              Container(
                padding: EdgeInsets.all(20.0),
                height: 150,
                width: 150,
                child: Image.network(
                  imageURL,
                  // fit: BoxFit.cover,
                ),
              ),
              Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Sign Up for Students',
                    style: TextStyle(
                        fontSize: 20, color: Colors.blueGrey.shade300),
                  )),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Full Name',
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  obscureText: true,
                  controller: emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email Address',
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  //forgot password screen
                },
                style: TextButton.styleFrom(
                  primary: Colors.white,
                ),
                child: Text('Create New Account'),
              ),
              Container(
                  height: 50,
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: RaisedButton(
                    textColor: Colors.white,
                    color: Colors.red.shade700,
                    child: Text('Sign Up', style: TextStyle(fontSize: 18)),
                    onPressed: () {
                      print(nameController.text);
                      print(passwordController.text);
                    },
                  )),
              Container(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                // children: [
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      child: Text('Already Have Account?',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                      onPressed: () => Get.to(LoginScreen()),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        elevation: 0,
                        // padding: EdgeInsets.symmetric(
                        //     horizontal: 50, vertical: 14),
                      ),
                    )
                  ],
                ),
                // ],
              ),
            ])));
  }
}
