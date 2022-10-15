import 'package:flutter/material.dart';
import 'package:easy_care/constants.dart';

class SearchCard extends StatelessWidget {
  final String hintText;
  const SearchCard({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: kCardShape,
      child: TextField(
        decoration: InputDecoration(
            border: const OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
            prefixIcon: const Icon(Icons.search),
            hintText: hintText,
            hintStyle: kSearchTextStyle),
      ),
    );
  }
}
