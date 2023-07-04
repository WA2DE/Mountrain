import 'package:flutter/material.dart';

class Menurinjani extends StatelessWidget {
  const Menurinjani({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Rinjani 2 1.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: const Center(
          child: Text(
            'Halaman Menurinjani',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
