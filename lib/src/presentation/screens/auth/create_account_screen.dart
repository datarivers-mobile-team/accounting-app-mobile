import 'package:accounting_app_mobile/src/presentation/screens/home/dashboard_screen.dart';
import 'package:accounting_app_mobile/src/presentation/widgets/button.dart';
import 'package:accounting_app_mobile/src/presentation/widgets/input.dart';
import 'package:flutter/material.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({Key? key}) : super(key: key);

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  late final TextEditingController _fullNameController;
  late final TextEditingController _refcode;
  String currency = 'EUR';
  @override
  void initState() {
    _fullNameController = TextEditingController();
    _refcode = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextInput(
              hint: 'fullname',
              controller: _fullNameController,
              icon: Icons.person,
            ),
            const SizedBox(
              height: 20,
            ),
            TextInput(
              hint: 'referral code',
              controller: _refcode,
              icon: Icons.person,
            ),
            const SizedBox(
              height: 20,
            ),
            DropdownButton(
              value: currency,
              onChanged: (value) => setState(() => currency = value.toString()),
              items: const [
                DropdownMenuItem(
                  child: Text('USD'),
                  value: 'USD',
                ),
                DropdownMenuItem(
                  child: Text('EUR'),
                  value: 'EUR',
                ),
                DropdownMenuItem(
                  child: Text('GBP'),
                  value: 'GBP',
                ),
                DropdownMenuItem(
                  child: Text('NGN'),
                  value: 'NGN',
                ),
              ],
            ),
            Button(
              onPress: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const DashBoardScreen(),
                  ),
                );
              },
              text: 'Create Account',
            ),
          ],
        ),
      ),
    );
  }
}
