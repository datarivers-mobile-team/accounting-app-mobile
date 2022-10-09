import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

import 'package:walletline/constants/constants.dart';
import 'package:walletline/layouts/layouts.dart';
import 'package:walletline/widgets/widgets.dart';
import './create_account_screen.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key, required this.number}) : super(key: key);
  final String number;
  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  String code = '';
  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      titleList: const [
        TextSpan(
          text: 'Verify ',
          style: TextStyle(
            color: CustomColors.kBlue,
          ),
        ),
        TextSpan(
          text: 'Account ',
          style: TextStyle(
            color: CustomColors.kDarkBlue,
          ),
        ),
        TextSpan(
          text: '!',
          style: TextStyle(color: CustomColors.kBlue),
        ),
      ],
      subTitle: 'Enter 4-digit Code code we have sent to at\n${widget.number}',
      children: [
        const SizedBox(
          height: 30,
        ),
        OTPTextField(
          length: 5,
          width: MediaQuery.of(context).size.width,
          fieldWidth: 45,
          style: const TextStyle(fontSize: 17),
          textFieldAlignment: MainAxisAlignment.spaceAround,
          fieldStyle: FieldStyle.underline,
          onChanged: (value) {},
          onCompleted: (pin) {
            setState(() {
              code = pin;
            });
          },
        ),
        const SizedBox(
          height: 100,
        ),
        Button(
          onPress: () {
            print(code);
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                  builder: (context) => const CreateAccountScreen()),
            );
          },
          text: 'Proceed',
        ),
      ],
    );
  }
}
