import 'package:flutter/material.dart';
import 'package:page_view/page1.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PageController _controller = PageController();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            PageView(
              controller: _controller,
              children: const [
                Page1(
                  "Earn for every Referal ",
                  "images/boba-wealth.png",
                  Colors.amberAccent,
                ),
                Page1(
                  "Send Money Fast",
                  "images/urban-saving-money.png",
                  Colors.amberAccent,
                ),
                Page1(
                  "Over 50 Countries",
                  "images/martina-guy-sends-a-message-from-phone.png",
                  Colors.amberAccent,
                ),
              ],
            ),
            SafeArea(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Spacer(),
                    SmoothPageIndicator(
                      controller: _controller,
                      count: 3,
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        fixedSize: const Size(250.0, 40.0),
                      ),
                      child: const Text(
                        "Login",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                        fixedSize: const Size(250.0, 40.0),
                      ),
                      child: const Text(
                        "SignUp",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
