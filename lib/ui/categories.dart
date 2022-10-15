import 'package:easy_care/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:easy_care/components/category_icon_button.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);
  static const id = 'categories';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Center(
              child: Text(
                'Hospital Name',
                style: kNameTextStyle,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CategoryIconButton(
                    icon: Icon(
                  FontAwesomeIcons.solidHeart,
                  color: Colors.white,
                  size: 40,
                )),
                SizedBox(
                  width: 40,
                ),
                CategoryIconButton(
                    icon: Icon(
                  FontAwesomeIcons.lungs,
                  color: Colors.white,
                  size: 40,
                )),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CategoryIconButton(
                    icon: Icon(
                  FontAwesomeIcons.tooth,
                  color: Colors.white,
                  size: 40,
                )),
                SizedBox(
                  width: 40,
                ),
                CategoryIconButton(
                    icon: Icon(
                  FontAwesomeIcons.skullCrossbones,
                  color: Colors.white,
                  size: 40,
                )),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CategoryIconButton(
                    icon: Icon(
                  FontAwesomeIcons.baby,
                  color: Colors.white,
                  size: 40,
                )),
                SizedBox(
                  width: 40,
                ),
                CategoryIconButton(
                    icon: Icon(
                  FontAwesomeIcons.earDeaf,
                  color: Colors.white,
                  size: 40,
                )),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
