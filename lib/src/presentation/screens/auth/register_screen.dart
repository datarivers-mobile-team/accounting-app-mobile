import 'package:accounting_app_mobile/consts.dart';
import 'package:accounting_app_mobile/src/presentation/layouts/auth_layout.dart';
import 'package:accounting_app_mobile/src/presentation/screens/auth/login_screen.dart';
import 'package:accounting_app_mobile/src/presentation/widgets/button.dart';
import 'package:accounting_app_mobile/src/presentation/widgets/input.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  late final TextEditingController _fullname;
  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    _fullname = TextEditingController();
    _email = TextEditingController();
    _password = TextEditingController();

    super.initState();
  }

/*


 



*/
  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      titleList: const [
        TextSpan(text: 'W', style: TextStyle(color: CustomColors.kGreen)),
        TextSpan(
          text: 'elcome',
          style: TextStyle(color: CustomColors.kDarkBlue),
        ),
        TextSpan(
          text: '!',
          style: TextStyle(color: CustomColors.kGreen),
        ),
      ],
      subTitle: 'Please provide following\ndetails for your new account',
      children: [
        const SizedBox(height: 77),
        TextInput(hint: 'Full Name', controller: _fullname, icon: Icons.person),
        const SizedBox(height: 10),
        TextInput(hint: 'Email Address', controller: _email, icon: Icons.email),
        const SizedBox(height: 10),
        SecureTextInput(
            hint: 'Password', controller: _password, icon: Icons.lock),
        const SizedBox(height: 10),
        Button(
          bgColor: CustomColors.kOrange,
          onPress: () {
            print([_email, _password, _fullname]);
          },
          text: 'Sign up my Account',
        ),
        const SizedBox(
          height: 10,
        ),
        Button(
          onPress: () {},
          text: 'Sign up with Phone Number',
        ),
        const SizedBox(
          height: 22,
        ),
        SimpleTextButton(
          text: 'Already have an account? - Sign In',
          onPress: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const LoginScreen()));
          },
        ),
      ],
    );
  }
}
