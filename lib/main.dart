import 'package:flutter/material.dart';
import 'package:myapp/login.dart';
import 'package:myapp/register.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (context) => Welogin(),
      'register': (context) => Weregister(),
      // 'test' :(context) => test(),
    },
  ));
}
