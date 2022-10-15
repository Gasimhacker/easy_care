import 'package:easy_care/services/provider.dart';
import 'package:easy_care/ui/patient_main_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final _auth = FirebaseAuth.instance;
final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

class CreateAndSignUser {
  static Future<Function> createUser(
      String email, String password, BuildContext context, String name) async {
    Provider.of<Spinner>(context, listen: false).changeSpinnerState();

    UserCredential? newUser;

    try {
      newUser = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      final uid = _auth.currentUser?.uid;
      await firebaseFirestore
          .collection('users')
          .doc(uid)
          .set({'email': email, 'uid': uid, 'name': name});
    } on FirebaseAuthException catch (e) {
      // This will catch any exception from the authentication only
      // Best ux practice is to display something when error happens
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.message ?? e.code),
        ),
      );
    } finally {
      // This gets executed either when try failed or succeeded
      Provider.of<Spinner>(context, listen: false).changeSpinnerState();

      if (newUser != null) {
        Navigator.pushNamed(context, PatientMainScreen.id);
      }
    }
    throw UnimplementedError();
  }

  static Future<Function> signUser(
      String email, String password, BuildContext context) async {
    Provider.of<Spinner>(context, listen: false).changeSpinnerState();

    UserCredential? newUser;

    try {
      newUser = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      // This will catch any exception from the authentication only
      // Best ux practice is to display something when error happens
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.message ?? e.code),
        ),
      );
    } finally {
      // This gets executed either when try failed or succeeded
      Provider.of<Spinner>(context, listen: false).changeSpinnerState();

      if (newUser != null) {
        Navigator.pushNamed(context, PatientMainScreen.id);
      }
    }
    throw UnimplementedError();
  }

  static User? getCurrentUser() {
    if (_auth.currentUser != null) {
      final loggedInUser = _auth.currentUser;
      return loggedInUser;
    }
    return null;
  }

  static Future<String> getUserName(String uid) async {
    final userData = await firebaseFirestore.collection('users').doc(uid).get();
    final userName = userData['name'];
    return userName;
  }
}
