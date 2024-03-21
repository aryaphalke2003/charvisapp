import 'package:flutter/material.dart';

import 'constants.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.text,
    required this.press,
    this.color = mainPrimaryColor,
    this.padding = const EdgeInsets.all(mainDefaultPadding * 0.75),
  }) : super(key: key);

  final String text;
  final VoidCallback press;
  final Color color;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(40)),
      ),
      padding: padding,
      color: color,
      minWidth: double.infinity,
      onPressed: press,
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white, // Button text color
          fontSize: 18,
        ),
      ),
    );
  }
}
