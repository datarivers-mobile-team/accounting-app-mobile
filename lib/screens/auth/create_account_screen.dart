import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_material_color_picker/flutter_material_color_picker.dart';
import 'package:walletline/constants/colors.dart';

import 'package:walletline/layouts/layouts.dart';
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
  ColorSwatch _color = Colors.red;
  List<String> currencies = ['USD', 'EUR', 'GBP', 'RUB', 'CNY', 'JPY'];
  String? currency;
  @override
  void initState() {
    _titleController = TextEditingController();
    _amountController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      titleList: const [],
      subTitle: 'Create your account',
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
          keyboardType: TextInputType.number,
        ),
        const SizedBox(
          height: 20,
        ),
        MaterialColorPicker(
          allowShades: false,
          onMainColorChange: (ColorSwatch? color) {
            setState(() => _color = color as ColorSwatch);
          },
          colors: const [Colors.amber, Colors.brown],
          selectedColor: _color,
        ),
        const SizedBox(
          height: 20,
        ),
        DropdownButtonFormField(
          value: currency,
          decoration: const InputDecoration(
            border: InputBorder.none,
          ),
          hint: const Text('Select currency'),
          onChanged: (value) => setState(() => currency = value.toString()),
          items: [
            ...currencies.map((e) => DropdownMenuItem(
                  value: e,
                  child: Text(e),
                ))
          ],
        ),
        const SizedBox(
          height: 20,
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
    );
  }
}
