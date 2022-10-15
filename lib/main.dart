import 'package:easy_care/services/provider.dart';
import 'package:easy_care/ui/categories.dart';
import 'package:easy_care/ui/hospitals.dart';
import 'package:easy_care/ui/login_screen.dart';
import 'package:easy_care/ui/patient_main_screen.dart';
import 'package:easy_care/ui/pharmacies.dart';
import 'package:easy_care/ui/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Spinner>(
      create: (BuildContext context) {
        return Spinner();
      },
      child: MaterialApp(
        routes: {
          Hospitals.id: (context) => const Hospitals(),
          Pharmacies.id: (context) => const Pharmacies(),
          PatientMainScreen.id: (context) => const PatientMainScreen(),
          LoginScreen.id: (context) => const LoginScreen(),
          SignUpScreen.id: (context) => const SignUpScreen(),
          Categories.id: (context) => const Categories(),
        },
        initialRoute: LoginScreen.id,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
