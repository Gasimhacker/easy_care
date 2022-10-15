import 'package:easy_care/components/search_card.dart';
import 'package:easy_care/constants.dart';
import 'package:flutter/material.dart';
import 'package:easy_care/components/hospital_card_template.dart';

class Pharmacies extends StatefulWidget {
  const Pharmacies({Key? key}) : super(key: key);
  static const id = 'Pharmacies';

  @override
  State<Pharmacies> createState() => _PharmaciesState();
}

class _PharmaciesState extends State<Pharmacies> {
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
                'Pharmacies',
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
                    hospitalPharmacy: 'Bahri Pharmacy',
                    hospitalPharmacyLocation: 'Bahri,Al Said Ali Merghani'),
                SizedBox(height: 30),
                HospitalPharmacyCardTemplate(
                    hospitalPharmacy: 'Omdurman Pharmacy',
                    hospitalPharmacyLocation: 'Khartoum,Buri'),
                SizedBox(height: 30),
                HospitalPharmacyCardTemplate(
                    hospitalPharmacy: 'Khartoum Pharmacy',
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
