import 'package:flutter/material.dart';
import 'package:flutter_first_to_tenth/screens/animated_container_page.dart';
import 'package:flutter_first_to_tenth/screens/home_page.dart';
import 'package:flutter_first_to_tenth/screens/main_page.dart';

void main() {
  runApp(const MyApp());
}

//stateless Widget
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => MainPage(),
        '/first_to_ninth': (context) => HomePage(),
        '/animated_container': (context) => animatedContainer()
      },
    );
  }
}
