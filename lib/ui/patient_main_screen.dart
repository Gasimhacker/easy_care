import 'package:easy_care/constants.dart';
import 'package:easy_care/services/fire_base_auth.dart';
import 'package:easy_care/services/network_helper.dart';
import 'package:easy_care/ui/hospitals.dart';
import 'package:easy_care/ui/pharmacies.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:easy_care/components/search_card.dart';
import 'package:easy_care/services/location.dart';

class PatientMainScreen extends StatefulWidget {
  const PatientMainScreen({super.key});
  static const id = 'patient main screen';

  @override
  State<PatientMainScreen> createState() => _PatientMainScreenState();
}

class _PatientMainScreenState extends State<PatientMainScreen> {
  NetworkHelper networkHelper = NetworkHelper();
  Location phoneLocation = Location();
  String userName = '';
  String id = '';
  void showUserName() async {
    final uid = CreateAndSignUser.getCurrentUser()?.uid;
    id = uid!;
    userName = await CreateAndSignUser.getUserName(uid);
    await phoneLocation.getCurrentLocation();
    setState(() {});
  }

  @override
  void initState() {
    showUserName();
    Map dataMap = {
      'name': userName,
      'id': id,
      'latit': phoneLocation.latitude,
      'longit': phoneLocation.longitude
    };
    networkHelper.sendData(dataMap, Uri.parse(''));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundColor: Color(0XFFD9D9D9),
                    child: Icon(
                      Icons.person,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Hello,',
                        style: TextStyle(color: Color(0xff828282)),
                      ),
                      Text(
                        userName,
                        style: kNameTextStyle,
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const SearchCard(
                hintText: 'Search Hospital,Medicine...',
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Your Appointments',
                style: kNameTextStyle,
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                decoration: kBoxDecoration,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const ListTile(
                      leading: Icon(
                        Icons.place,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Bahri Hospital,Al Said Ali Merghani',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const ListTile(
                      leading: Icon(
                        FontAwesomeIcons.handHoldingMedical,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Dr.Abdalrahman',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 40.0, right: 40.0, bottom: 15),
                      child: Card(
                        elevation: 0,
                        shape: kTimeCardShape,
                        color: const Color.fromRGBO(158, 176, 222, 0.28),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.calendar_today,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'May,12',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Icon(
                                Icons.access_time,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '12:30 pm',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Services',
                style: kNameTextStyle,
              ),
              const SizedBox(height: 15),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, Hospitals.id);
                },
                child: Card(
                  shape: kCardShape,
                  child: ListTile(
                    leading: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xff1e4ec8),
                      ),
                      child: const Icon(
                        FontAwesomeIcons.hospitalUser,
                        color: Colors.white,
                      ),
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Find Near Hospitals',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Here you can search for the nearest hospital from you and the available doctors in it.',
                          style: kExplainTextStyle,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, Pharmacies.id);
                },
                child: Card(
                  shape: kCardShape,
                  child: ListTile(
                    leading: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xff1e4ec8),
                      ),
                      child: const Icon(
                        FontAwesomeIcons.staffSnake,
                        color: Colors.white,
                      ),
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Find Your Medicine',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'You can find your medicine easily in the nearest pharmacies from your home',
                          style: kExplainTextStyle,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
