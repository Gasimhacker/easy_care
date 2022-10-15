import 'package:flutter/material.dart';
import 'package:easy_care/constants.dart';
import 'package:easy_care/ui/categories.dart';
import 'package:easy_care/components/login_register_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HospitalCardTemplate extends StatelessWidget {
  const HospitalCardTemplate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, Categories.id);
      },
      child: Card(
        shape: kCardShape,
        clipBehavior: Clip.hardEdge,
        child: Column(
          children: [
            Image.asset('images/hospital_template.png'),
            Container(
              decoration: kHospitalsBoxDecoration,
              margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Row(
                        children: const [
                          Icon(
                            FontAwesomeIcons.handHoldingMedical,
                            color: kThemeColor,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Bahri Hospital',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.place,
                            color: kThemeColor,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Khartoum,Buri',
                            style: kLocationTextStyle,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.access_time,
                            color: kThemeColor,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '12:00AM-11Pm',
                            style: kLocationTextStyle,
                          )
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      const Icon(
                        FontAwesomeIcons.truckMedical,
                        color: kThemeColor,
                      ),
                      LoginRegisterButton(
                          title: '4.5 miles',
                          onPressed: () {},
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ))
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
