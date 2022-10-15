import 'package:easy_care/components/login_register_button.dart';
import 'package:easy_care/services/fire_base_auth.dart';
import 'package:flutter/material.dart';
import 'package:easy_care/constants.dart';
import 'package:easy_care/components/logo.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:provider/provider.dart';
import 'package:easy_care/services/provider.dart';

String email = '';
String name = '';
String password = '';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  static const id = 'Sign up screen';
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
                Flexible(
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
                              'Sign up',
                              style: TextStyle(
                                  fontSize: 33, fontWeight: FontWeight.w500),
                            ),
                          ),
                          const Padding(
                            padding: kTextFieldPadding,
                            child: Text(
                              'Name',
                              style: kFormCardTextStyle,
                            ),
                          ),
                          Card(
                            elevation: 1,
                            shape: kCardShape,
                            child: TextField(
                              onChanged: (value) {
                                name = value;
                              },
                              decoration: kFormCardDecoration,
                            ),
                          ),
                          const Padding(
                            padding: kTextFieldPadding,
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
                            padding: kTextFieldPadding,
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
                            onPressed: () async {
                              await CreateAndSignUser.createUser(
                                  email, password, context, name);
                            },
                            title: 'Sign up',
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
