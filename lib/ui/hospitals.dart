import 'package:easy_care/components/search_card.dart';
import 'package:easy_care/constants.dart';
import 'package:flutter/material.dart';
import 'package:easy_care/components/hospital_card_template.dart';

class Hospitals extends StatefulWidget {
  const Hospitals({Key? key}) : super(key: key);
  static const id = 'hospitals';

  @override
  State<Hospitals> createState() => _HospitalsState();
}

class _HospitalsState extends State<Hospitals> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Center(
              child: Text(
                'Hospitals',
                style: kNameTextStyle,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const SearchCard(
              hintText: 'Search Hospital...',
            ),
            Flexible(
              child: ListView(children: const [
                HospitalPharmacyCardTemplate(
                  hospitalPharmacy: 'Bahri Hospital',
                  hospitalPharmacyLocation: 'Bahri,Al Said Ali Merghani',
                ),
                SizedBox(height: 30),
                HospitalPharmacyCardTemplate(
                    hospitalPharmacy: 'Royal care Hospital',
                    hospitalPharmacyLocation: 'Khartoum,Buri'),
                SizedBox(height: 30),
                HospitalPharmacyCardTemplate(
                    hospitalPharmacy: 'Alzaytona Hospital',
                    hospitalPharmacyLocation: 'Khartoum,Buri'),
                SizedBox(
                  height: 30,
                ),
              ]),
            ),
          ],
        ),
      ),
    ));
  }
}
