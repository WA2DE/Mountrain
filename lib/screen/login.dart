import 'package:flutter/material.dart';
import 'package:flutter_mountrip/screen/main_menu.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() {
  runApp(const Signin());
}

class Signin extends StatelessWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Form',
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  Future<void> _registerWithEmailAndPassword() async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text,
      );
      User? user = userCredential.user;
      if (user != null) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Mainmenu(),
          ),
        );
      }
    } catch (e) {
      print('Error during registration: $e');
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Registration Failed'),
            content: const Text('An error occurred during registration.'),
            actions: <Widget>[
              TextButton(
                child: const Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffffffff),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 33, right: 40, top: 187),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Text(
                    'Mountrip',
                    style: GoogleFonts.poppins(
                      fontSize: 36,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff284677),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 0,
                ),
                Center(
                  child: Text(
                    'Explore a Wonderful Indonesia',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff284677),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 66,
                ),
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    labelText: 'Email',
                    labelStyle: const TextStyle(
                      fontSize: 18,
                      color: Color(0xff6787BC),
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                TextField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    labelText: 'Username',
                    labelStyle: const TextStyle(
                      fontSize: 18,
                      color: Color(0xff6787BC),
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    labelText: 'Password',
                    labelStyle: const TextStyle(
                      fontSize: 18,
                      color: Color(0xff6787BC),
                    ),
                  ),
                  obscureText: true,
                ),
                const SizedBox(height: 24.0),
                GestureDetector(
                  onTap: _registerWithEmailAndPassword,
                  child: Container(
                    margin: const EdgeInsets.only(top: 1),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 54,
                      vertical: 7,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xffD9D9D9),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Text(
                      'Sign In',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff274674),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 38,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 5),
                  child: Center(
                    child: Image.asset(
                      'assets/mountain2.png',
                      width: 200,
                      height: 200,
                      fit: BoxFit.contain,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
