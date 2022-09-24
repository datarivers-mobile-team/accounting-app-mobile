import 'package:flutter/material.dart';
import 'package:accounting_app_mobile/consts.dart';

class TextInput extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  final IconData icon;
  const TextInput({
    Key? key,
    required this.hint,
    required this.controller,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      cursorColor: CustomColors.kPrimary,
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: Colors.transparent),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
            width: 2,
            color: CustomColors.kPrimary,
          ),
        ),
        hintText: hint,
        // hintStyle: const TextStyle(color: CustomColors.kDarkBlue, fontSize: 15),
        filled: true,
        fillColor: CustomColors.kLightGray,
        focusColor: Colors.white,
        prefixIcon: Icon(icon, color: CustomColors.kDarkBlue),
      ),
    );
  }
}

class SecureTextInput extends StatefulWidget {
  final String hint;
  final TextEditingController controller;
  final IconData icon;
  const SecureTextInput(
      {Key? key,
      required this.hint,
      required this.controller,
      required this.icon})
      : super(key: key);

  @override
  State<SecureTextInput> createState() => _SecureTextInputState();
}

class _SecureTextInputState extends State<SecureTextInput> {
  bool isHidden = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      cursorColor: CustomColors.kPrimary,
      obscureText: isHidden,
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: Colors.transparent),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
            width: 2,
            color: CustomColors.kPrimary,
          ),
        ),
        hintText: widget.hint,
        // hintStyle: const TextStyle(color: CustomColors.kDarkBlue, fontSize: 15),
        filled: true,
        fillColor: CustomColors.kLightGray,
        prefixIcon: Icon(widget.icon, color: CustomColors.kDarkBlue),
        suffixIcon: IconButton(
          color: Colors.black38,
          splashColor: Colors.transparent,
          icon: isHidden
              ? const Icon(Icons.visibility)
              : const Icon(Icons.visibility_off),
          onPressed: () => setState(() {
            isHidden = !isHidden;
          }),
        ),
      ),
    );
  }
}

class PhoneNumInput extends StatefulWidget {
  final TextEditingController controller;
  final List<String> countryCodes;
  final String currentCode;
  final Function(String) onCodeChanged;
  const PhoneNumInput({
    Key? key,
    required this.controller,
    required this.countryCodes,
    required this.currentCode,
    required this.onCodeChanged,
  }) : super(key: key);

  @override
  State<PhoneNumInput> createState() => _PhoneNumInputState();
}

class _PhoneNumInputState extends State<PhoneNumInput> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      cursorColor: CustomColors.kPrimary,
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: Colors.transparent),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
            width: 2,
            color: CustomColors.kPrimary,
          ),
        ),
        hintText: 'Phone Number',
        filled: true,
        fillColor: CustomColors.kLightGray,
        prefixIcon: Container(
          decoration: const BoxDecoration(
            border: Border(
              right: BorderSide(
                width: 1,
                color: Colors.black12,
              ),
            ),
          ),
          padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
          margin: const EdgeInsets.only(right: 10),
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
              iconSize: 0,
              menuMaxHeight: 200,
              onChanged: (value) => widget.onCodeChanged(value.toString()),
              items: widget.countryCodes
                  .map((e) => DropdownMenuItem<String>(
                        value: e,
                        child: Text(
                          e,
                          textAlign: TextAlign.center,
                        ),
                      ))
                  .toList(),
              value: widget.currentCode,
            ),
          ),
        ),
      ),
    );
  }
}
