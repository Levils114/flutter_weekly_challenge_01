import 'package:flutter/material.dart';
import 'package:week_1/src/screens/home_page.dart';
import 'package:week_1/src/screens/sign_up.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Week 1',
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {'/': (context) => HomePage(), '/sign_up': (context) => SignUp()},
    );
  }
}
