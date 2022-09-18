import 'package:accounting_app_mobile/consts.dart';
import 'package:flutter/material.dart';

class AuthLayout extends StatelessWidget {
  const AuthLayout({
    Key? key,
    required this.titleList,
    required this.subTitle,
    required this.children,
  }) : super(key: key);

  final List<TextSpan> titleList;
  final String subTitle;
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text.rich(
                TextSpan(
                  style: const TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w700,
                  ),
                  children: titleList,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 21),
              Text(
                subTitle,
                style: const TextStyle(
                  height: 1.6,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: CustomColors.kLightDarkBlue,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 77),
              ...children,
            ],
          ),
        ),
      ),
    );
  }
}
