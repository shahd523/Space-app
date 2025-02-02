import 'package:assign3_flutter/DetailsScreen.dart';
import 'package:assign3_flutter/Home_Page.dart';
import 'package:assign3_flutter/Login_Page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        LoginPage.routeName:(_)=>LoginPage(),
        HomePage.routeName:(_)=>HomePage(),
        DetailsScreen.routeName:(_)=>DetailsScreen()

      },
      initialRoute: LoginPage.routeName,
    );
  }
}