import 'package:flutter/material.dart';
import 'package:talkio/main.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Welcome to Talkio"),
      ),
      body: Stack(
        children: [
          AnimatedPositioned(
              top: mq.height * .15,
              left: mq.width * .25,
              width: mq.width * .5,
              duration: Duration(seconds: 2),
              child: Image.asset("images/icon.png")),
          Positioned(
              bottom: mq.height * .25,
              left: mq.width * .05,
              width: mq.width * .9,
              height: mq.height * 0.07,
              child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 42, 200, 145),
                      shape: StadiumBorder(),
                      elevation: 1),
                  onPressed: () {},
                  icon: Image.asset("images/phone.png"),
                  label: Text(
                    "Login with Phone number",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ))),
          Positioned(
              bottom: mq.height * .15,
              left: mq.width * .05,
              width: mq.width * .9,
              height: mq.height * 0.07,
              child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 42, 200, 145),
                      shape: StadiumBorder(),
                      elevation: 1),
                  onPressed: () {},
                  icon: Image.asset("images/Google.png"),
                  label: Text(
                    "Login with Google",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  )))
        ],
      ),
    );
  }
}
