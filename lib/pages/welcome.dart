import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(children: [
            Positioned(
              child: Image.asset('assets/images/main_top.png'),
              width: 111,
              left: 0,
              top: 0,
            ),
            Positioned(
              child: Image.asset('assets/images/main_bottom.png'),
              width: 111,
              bottom: 0,
              left: 0,
            ),
            SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 35,
                    ),
                    Text(
                      'Welcome',
                      style: TextStyle(fontSize: 33, fontFamily: "myfont"),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    SvgPicture.asset("assets/icons/chat.svg",width: 300,),
                    SizedBox(
                      height: 90,
                    ),
                    SizedBox(
                      width: 300,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/login");
                        },
                        child: Text("LOGIN"),
                        style: ElevatedButton.styleFrom(
                          textStyle: TextStyle(fontSize: 24),
                          backgroundColor: Colors.purple,
                          foregroundColor: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    SizedBox(
                        width: 300,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "/signup");
                          },
                          child: Text("SIGNUP"),
                          style: ElevatedButton.styleFrom(
                              textStyle: TextStyle(fontSize: 24),
                              backgroundColor: Colors.purple[50],
                              foregroundColor: Colors.black),
                        ))
                  ],
                )),
          ])),
    ));
  }
}
