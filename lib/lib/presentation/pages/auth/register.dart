import 'package:accounting_app_mobile/consts.dart';
import 'package:accounting_app_mobile/lib/presentation/widgets/input.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String fullname = '';
  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text.rich(TextSpan(
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w700),
                  children: [
                    TextSpan(
                        text: 'W',
                        style: TextStyle(color: CustomColors.kGreen)),
                    TextSpan(
                      text: 'elcome',
                      style: TextStyle(color: CustomColors.kDarkBlue),
                    ),
                    TextSpan(
                      text: '!',
                      style: TextStyle(color: CustomColors.kGreen),
                    ),
                  ])),
              const SizedBox(height: 21),
              const Text(
                'Please provide following\ndetails for your new account',
                style: TextStyle(
                  height: 1.6,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: CustomColors.kLightDarkBlue,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 77),
              TextInput(
                label: 'Full Name',
                hint: 'John Doe',
                setValue: (value) => {
                  setState(() {
                    fullname = value;
                  })
                },
              ),
              const SizedBox(height: 10),
              TextInput(
                label: 'Email Address',
                hint: 'example@example.com',
                setValue: (value) => {
                  setState(() {
                    email = value;
                  })
                },
              ),
              const SizedBox(height: 10),
              SecureTextInput(
                label: 'Password',
                setValue: (value) => {
                  setState(() {
                    password = value;
                  })
                },
              )
              // SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
