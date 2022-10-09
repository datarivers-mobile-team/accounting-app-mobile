import 'package:flutter/material.dart';

import 'package:walletline/widgets/widgets.dart';
import '../home/home.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({Key? key}) : super(key: key);

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  late final TextEditingController _titleController;
  late final TextEditingController _amountController;
  String currency = 'EUR';
  @override
  void initState() {
    _titleController = TextEditingController();
    _amountController = TextEditingController();
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
              hint: 'title',
              controller: _titleController,
              icon: Icons.title,
            ),
            const SizedBox(
              height: 20,
            ),
            TextInput(
              hint: 'starting amount',
              controller: _amountController,
              icon: Icons.currency_exchange,
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
