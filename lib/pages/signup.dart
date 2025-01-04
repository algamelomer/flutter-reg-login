// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

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
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox(
                    height: 35,
                  ),
                  Text("SignUp",
                      style: TextStyle(
                          fontSize: 35,
                          fontFamily: "myfont",
                          color: Colors.grey[800])),
                  SizedBox(
                    height: 21,
                  ),
                  SvgPicture.asset(
                    "assets/icons/signup.svg",
                    height: 222,
                  ),
                  SizedBox(
                    height: 21,
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
                    height: 15,
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
                    height: 15,
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
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an accout? "),
                      GestureDetector(
                        onTap: () {
                          // Navigator.pop(context);
                          Navigator.pushNamedAndRemoveUntil(
                              context, '/login', (route) => false);
                        },
                        child: Text(
                          " Log in",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 299,
                    child: Row(
                      children: [
                        Expanded(
                            child: Divider(
                          thickness: 0.6,
                          color: Colors.purple[900],
                        )),
                        Text(
                          "  OR  ",
                          style: TextStyle(color: Colors.purple[900]),
                        ),
                        Expanded(
                            child: Divider(
                          thickness: 0.6,
                          color: Colors.purple[900],
                        ))
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 27),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.all(13),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.purple, width: 1)),
                            child: SvgPicture.asset(
                              "assets/icons/facebook.svg",
                              color: Colors.purple[400],
                              height: 27,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 22,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.all(13),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.purple, width: 1)),
                            child: SvgPicture.asset(
                              "assets/icons/google-plus.svg",
                              color: Colors.purple[400],
                              height: 27,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 22,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.all(13),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.purple, width: 1)),
                            child: SvgPicture.asset(
                              "assets/icons/twitter.svg",
                              color: Colors.purple[400],
                              height: 27,
                            ),
                          ),
                        ),
                      ],
                    ),
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
