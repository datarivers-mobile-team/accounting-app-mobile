import 'package:flutter/material.dart';
import 'package:accounting_app_mobile/consts.dart';

class TextInput extends StatefulWidget {
  final String label;
  final String hint;
  final Function setValue;
  const TextInput({
    Key? key,
    required this.label,
    required this.hint,
    required this.setValue,
  }) : super(key: key);
  @override
  State<TextInput> createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) => widget.setValue(value),
      cursorColor: CustomColors.kLightYellow,
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: Colors.transparent),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
            width: 2,
            color: CustomColors.kLightYellow,
          ),
        ),
        labelText: widget.label,
        hintText: widget.hint,
        labelStyle:
            const TextStyle(color: CustomColors.kDarkBlue, fontSize: 15),
        filled: true,
        fillColor: CustomColors.kLightGrey,
        focusColor: Colors.white,
        prefixIcon: const Icon(Icons.email, color: CustomColors.kDarkBlue),
      ),
    );
  }
}

class SecureTextInput extends StatefulWidget {
  final String label;
  final Function setValue;

  const SecureTextInput({Key? key, required this.label, required this.setValue})
      : super(key: key);

  @override
  State<SecureTextInput> createState() => _SecureTextInputState();
}

class _SecureTextInputState extends State<SecureTextInput> {
  bool isHidden = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) => widget.setValue(value),
      cursorColor: CustomColors.kLightYellow,
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
            color: CustomColors.kLightYellow,
          ),
        ),
        labelText: widget.label,
        labelStyle:
            const TextStyle(color: CustomColors.kDarkBlue, fontSize: 15),
        filled: true,
        fillColor: CustomColors.kLightGrey,
        prefixIcon: const Icon(Icons.email, color: CustomColors.kDarkBlue),
        suffixIcon: IconButton(
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
