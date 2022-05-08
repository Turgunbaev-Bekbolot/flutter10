import 'package:flutter/material.dart';
import 'package:routes_practice/start_screen/start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) {
          return StartScreen();
        },
        // '/Auth': (context) => AuthScreen(title: '',),
      },
      title: 'Flutter Demo',
      theme: ThemeData(),
    );
  }
}
