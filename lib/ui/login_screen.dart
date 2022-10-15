import 'package:easy_care/services/fire_base_auth.dart';
import 'package:easy_care/ui/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:easy_care/constants.dart';
import 'package:easy_care/components/logo.dart';
import 'package:easy_care/components/login_register_button.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:provider/provider.dart';
import 'package:easy_care/services/provider.dart';

String email = '';
String password = '';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static const id = 'login screen';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: kLoginBoxDecoration,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: ModalProgressHUD(
            inAsyncCall: Provider.of<Spinner>(context).isSpinning,
            child: Column(
              children: [
                const HealthCareLogo(),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(190),
                        ),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(35.0),
                      child: ListView(
                        children: [
                          const Padding(
                            padding:
                                EdgeInsets.only(left: 8.0, top: 20, bottom: 10),
                            child: Text(
                              'Sign in',
                              style: TextStyle(
                                  fontSize: 33, fontWeight: FontWeight.w500),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 8.0, top: 10),
                            child: Text(
                              'Email',
                              style: kFormCardTextStyle,
                            ),
                          ),
                          Card(
                            elevation: 1,
                            shape: kCardShape,
                            child: TextField(
                              onChanged: (value) {
                                email = value;
                              },
                              decoration: kFormCardDecoration,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 8.0, top: 10),
                            child: Text(
                              'Password',
                              style: kFormCardTextStyle,
                            ),
                          ),
                          Card(
                            elevation: 1,
                            shape: kCardShape,
                            child: TextField(
                              obscureText: true,
                              onChanged: (value) {
                                password = value;
                              },
                              decoration: kFormCardDecoration,
                            ),
                          ),
                          LoginRegisterButton(
                            onPressed: () {
                              CreateAndSignUser.signUser(
                                  email, password, context);
                            },
                            title: 'Sign in',
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text('Don\'t have an account? ',
                                      style:
                                          TextStyle(color: Color(0xffAAAAAA))),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, SignUpScreen.id);
                                    },
                                    child: const Text('Sign up',
                                        style: TextStyle(
                                            color: Color(0xff1e4ec8))),
                                  ),
                                ],
                              ),
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
        ),
      ),
    );
  }
}
