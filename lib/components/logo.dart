import 'package:flutter/material.dart';
import 'package:easy_care/constants.dart';

class HealthCareLogo extends StatelessWidget {
  const HealthCareLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      width: double.infinity,
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Easy',
            style: kEasyCareTextStyle,
          ),
          Padding(
            padding: EdgeInsets.only(left: 80.0),
            child: Text(
              'Care',
              style: kEasyCareTextStyle,
            ),
          ),
        ],
      )),
    );
  }
}
