import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1(this.heading, this.image, this.backGround, {super.key});
  final String heading;
  final String image;
  final Color backGround;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGround,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              heading,
              style: const TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 60.0),
            Image.asset(image),
            const SizedBox(
              height: 80,
            )
          ],
        ),
      ),
    );
  }
}
