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
        hintText: hint,
        // hintStyle: const TextStyle(color: CustomColors.kDarkBlue, fontSize: 15),
        filled: true,
        fillColor: CustomColors.kLightGrey,
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
        hintText: widget.hint,
        // hintStyle: const TextStyle(color: CustomColors.kDarkBlue, fontSize: 15),
        filled: true,
        fillColor: CustomColors.kLightGrey,
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
