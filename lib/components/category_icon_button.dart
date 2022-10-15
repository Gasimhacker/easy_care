import 'package:flutter/material.dart';
import 'package:easy_care/constants.dart';

class CategoryIconButton extends StatelessWidget {
  const CategoryIconButton({super.key, this.icon});
  final icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: MaterialButton(
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: icon,
        ),
        color: kThemeColor,
        shape: kCategoryShape,
      ),
    );
  }
}
