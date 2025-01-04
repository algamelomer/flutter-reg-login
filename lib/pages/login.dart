// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
        },
        child: Icon(
          Icons.home,
          color: Colors.purple[700],
        ),
      ),
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Positioned(
              child: Image.asset('assets/images/main_top.png'),
              width: 111,
              left: 0,
              top: 0,
            ),
            Positioned(
              child: Image.asset('assets/images/login_bottom.png'),
              bottom: 0,
              right: 0,
              width: 250,
            ),
            SizedBox(
              height: 35,
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  Text("LOGIN",
                      style: TextStyle(
                          fontSize: 35,
                          fontFamily: "myfont",
                          color: Colors.grey[800])),
                  SizedBox(
                    height: 35,
                  ),
                  SvgPicture.asset(
                    "assets/icons/login.svg",
                    width: 288,
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Container(
                    width: 300,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                        color: Colors.purple[100],
                        borderRadius: BorderRadius.circular(66)),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon:
                              Icon(Icons.person, color: Colors.purple[800]),
                          hintText: "example@domain.com",
                          hintStyle: TextStyle(color: Colors.grey[800])),
                    ),
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  Container(
                    width: 300,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                        color: Colors.purple[100],
                        borderRadius: BorderRadius.circular(66)),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.purple[900],
                          ),
                          suffixIcon: Icon(
                            Icons.visibility,
                            color: Colors.purple[900],
                          ),
                          hintText: "password: ",
                          hintStyle: TextStyle(color: Colors.grey[800])),
                    ),
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  Container(
                    width: 300,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Text("LOGIN"),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purple[700],
                            foregroundColor: Colors.white,
                            textStyle: TextStyle(fontSize: 24))),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an accout? "),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamedAndRemoveUntil(
                              context, '/signup', (route) => false);
                        },
                        child: Text(
                          " SignUp",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
