import 'package:accounting_app_mobile/consts.dart';
import 'package:accounting_app_mobile/src/presentation/layouts/auth_layout.dart';
import 'package:accounting_app_mobile/src/presentation/screens/auth/accept_screen.dart';
import 'package:accounting_app_mobile/src/presentation/screens/auth/create_account_screen.dart';
import 'package:accounting_app_mobile/src/presentation/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key, required this.number}) : super(key: key);
  final String number;
  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            SizedBox(
              width: 50,
              child: TextField(
                autofocus: true,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                maxLength: 1,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(
              width: 50,
              child: TextField(),
            ),
            SizedBox(
              width: 50,
              child: TextField(),
            ),
            SizedBox(
              width: 50,
              child: TextField(),
            ),
          ],
        ),
        const SizedBox(
          height: 100,
        ),
        Button(
          onPress: () {
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
