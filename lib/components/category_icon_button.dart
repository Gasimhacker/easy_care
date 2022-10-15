import 'package:flutter/material.dart';
import 'package:easy_care/constants.dart';

class CategoryIconButton extends StatelessWidget {
  const CategoryIconButton({super.key, required this.icon});
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: MaterialButton(
        onPressed: () {},
        color: kThemeColor,
        shape: kCategoryShape,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: icon,
        ),
      ),
    );
  }
}
