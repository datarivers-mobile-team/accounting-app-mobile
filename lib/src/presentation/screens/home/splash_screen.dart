import 'package:accounting_app_mobile/consts.dart';
import 'package:accounting_app_mobile/src/presentation/screens/auth/register_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const RegisterScreen(),
        ),
      );
    });
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [CustomColors.kPurple, CustomColors.kWhiteYellow],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/PNG/splash_logo.png",
                    width: 150,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Accounting",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: CustomColors.kDarkBlue),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Image.asset(
                  "assets/images/PNG/splash_top2.png",
                  width: 240,
                ),
                Image.asset(
                  "assets/images/PNG/splash_top1.png",
                  width: 200,
                ),
                Image.asset(
                  "assets/images/PNG/splash_top0.png",
                  width: 200,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Image.asset(
                  "assets/images/PNG/splash_bottom1.png",
                  width: 210,
                ),
                Image.asset(
                  "assets/images/PNG/splash_bottom2.png",
                  width: 200,
                ),
                Positioned(
                  left: 40,
                  child: Image.asset(
                    "assets/images/PNG/splash_bottom3.png",
                    width: 200,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}