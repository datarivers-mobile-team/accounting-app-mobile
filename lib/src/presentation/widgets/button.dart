import 'package:accounting_app_mobile/consts.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Color bgColor;
  final Function onPress;
  final String text;
  const Button(
      {Key? key,
      this.bgColor = CustomColors.kPrimary,
      required this.onPress,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onPress(),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(bgColor),
        elevation: MaterialStateProperty.all(0),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18.0),
        child: Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
        ),
      ),
    );
  }
}

class SimpleTextButton extends StatelessWidget {
  const SimpleTextButton({
    Key? key,
    required this.onPress,
    required this.text,
  }) : super(key: key);

  final Function onPress;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(color: CustomColors.kDarkBlue),
          ),
        ),
      ),
      onTap: () => onPress(),
    );
  }
}
