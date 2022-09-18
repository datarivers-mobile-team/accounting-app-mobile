import 'package:accounting_app_mobile/consts.dart';
import 'package:accounting_app_mobile/src/presentation/layouts/auth_layout.dart';
import 'package:accounting_app_mobile/src/presentation/screens/auth/register_screen.dart';
import 'package:accounting_app_mobile/src/presentation/widgets/button.dart';
import 'package:accounting_app_mobile/src/presentation/widgets/input.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      titleList: const [
        TextSpan(text: 'W', style: TextStyle(color: CustomColors.kGreen)),
        TextSpan(
          text: 'elcome Back',
          style: TextStyle(color: CustomColors.kDarkBlue),
        ),
        TextSpan(
          text: '!',
          style: TextStyle(color: CustomColors.kOrange),
        ),
      ],
      subTitle: 'Sign in to continue ',
      children: [
        const SizedBox(
          height: 95,
        ),
        TextInput(
          hint: 'Email Address',
          controller: _email,
          icon: Icons.email,
        ),
        const SizedBox(
          height: 10,
        ),
        SecureTextInput(
          hint: 'Password',
          controller: _password,
          icon: Icons.lock,
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            InkWell(
              onTap: () {},
              child: const Text(
                'Forgot Password?',
                style: TextStyle(
                  color: CustomColors.kDarkBlue,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 36,
        ),
        Button(
          bgColor: CustomColors.kOrange,
          onPress: () {},
          text: 'Sign in My Account',
        ),
        const SizedBox(
          height: 18,
        ),
        SimpleTextButton(
          onPress: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => const RegisterScreen(),
              ),
            );
          },
          text: 'Don’t have an account? - Sign Up',
        ),
      ],
    );
  }
}
