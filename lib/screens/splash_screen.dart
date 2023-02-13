import 'dart:async';

import 'package:clone_ebook/screens/settings_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTimeout() {
    return Timer(
      const Duration(seconds: 1),
      onTimeout,
    );
  }

  void onTimeout() async {
    // AppRouter.pushPageReplacement(
    //   context,
    //   const MainScreen(),
    // );
    // Navigator.popAndPushNamed(context, '/main');
    // Navigator.pushReplacement(
    //   context,
    //   MaterialPageRoute(
    //     builder: (context) {
    //       return const MainScreen();
    //     },
    //   ),
    // );

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) {
          // return const MainScreen();
          return const SettingsScreen();
        },
      ),
    );
  }

  @override
  void initState() {
    startTimeout();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          Image.asset(
            "assets/images/app-icon.png",
            height: 300,
            width: 300,
          )
        ]),
      ),
    );
  }
}
