import 'package:assignment_2/login.dart';
import 'package:assignment_2/signUp.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    // theme: _switchValue ? _lightTheme : _darkTheme,
    debugShowCheckedModeBanner: false,
    initialRoute: 'signUp',
    routes: {
      'login': (context) => MyLogin(),
      'signUp': (context) => MySignUp(),
    },
  ));
}

