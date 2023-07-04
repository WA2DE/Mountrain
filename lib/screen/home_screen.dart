import 'package:flutter/material.dart';
import 'package:flutter_mountrip/screen/login.dart' as login;
import 'package:flutter_mountrip/screen/register.dart' as register;

class Home extends StatefulWidget {
  const Home({Key? key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/mountin.jpg"),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 200,
                height: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/mountriplogo.png'),
                  ),
                ),
              ),
            ),
            Center(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      padding:
                          const EdgeInsets.only(top: 100, right: 200, left: 18),
                      child: const Text(
                        "Mountrip.",
                        style: TextStyle(
                          fontSize: 35,
                          color: Color(0xffFFFFFF),
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      padding:
                          const EdgeInsets.only(top: 10, right: 100, left: 0),
                      child: const Text(
                        "Explore a Wonderful Indonesia",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xffFFFFFF),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 100,
              top: 350,
              right: 100,
              left: 100,
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => login.LoginPage()),
                      );
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color(0xffD9D9D9),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                          left: 50,
                          right: 50,
                          top: 10,
                          bottom: 10,
                        ),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff284677),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => register.Signin()),
                      );
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color(0xffD9D9D9),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                          left: 45,
                          right: 45,
                          top: 10,
                          bottom: 10,
                        ),
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff284677),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
