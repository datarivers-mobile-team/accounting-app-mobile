import 'package:flutter/material.dart';

import 'package:walletline/constants/constants.dart';
import 'package:walletline/widgets/widgets.dart';
import 'package:walletline/layouts/layouts.dart';
import './auth.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late final TextEditingController _phoneNumber;
  String currentCode = '+1';
  @override
  void initState() {
    _phoneNumber = TextEditingController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      icon: Stack(
        children: [
          Center(child: Image.asset('assets/images/PNG/circle.png')),
          Center(
            heightFactor: 1.6,
            child: Transform.scale(
              scaleX: -1,
              child: const Icon(
                Icons.phone,
                size: 80,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      titleList: const [
        TextSpan(text: 'M', style: TextStyle(color: CustomColors.kBlue)),
        TextSpan(
          text: 'obile',
          style: TextStyle(color: CustomColors.kDarkBlue),
        ),
        TextSpan(
          text: ' N',
          style: TextStyle(color: CustomColors.kGreen),
        ),
        TextSpan(
          text: 'umber',
          style: TextStyle(color: CustomColors.kDarkBlue),
        ),
      ],
      subTitle:
          'Please enter your valid phone number. We will send you 4-digit code to verify account.',
      children: [
        const SizedBox(
          height: 95,
        ),
        PhoneNumInput(
          controller: _phoneNumber,
          countryCodes: const ['+1', '+2', '+3', '+4', '+98'],
          currentCode: currentCode,
          onCodeChanged: (String code) => setState(() {
            currentCode = code;
          }),
        ),
        const SizedBox(
          height: 36,
        ),
        Button(
          bgColor: CustomColors.kPrimary,
          onPress: () {
            String number = '$currentCode ${_phoneNumber.text}';
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => OtpScreen(number: number),
              ),
            );
          },
          text: 'Send Code',
        ),
        const SizedBox(
          height: 18,
        ),
      ],
    );
  }
}
