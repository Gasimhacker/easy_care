import 'package:flutter/material.dart';
import 'package:easy_care/constants.dart';

class LoginRegisterButton extends StatelessWidget {
  const LoginRegisterButton(
      {super.key,
      required this.onPressed,
      required this.title,
      this.padding,
      this.shape});
  final Function() onPressed;
  final String title;
  final EdgeInsetsGeometry? padding;
  final ShapeBorder? shape;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20, top: 50),
      child: Center(
        child: MaterialButton(
          shape: shape ?? kCardShape,
          padding: padding ??
              const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          onPressed: onPressed,
          color: const Color(0xff1e4ec8),
          child: Text(
            title,
            style: const TextStyle(color: Colors.white, fontSize: 19),
          ),
        ),
      ),
    );
  }
}
