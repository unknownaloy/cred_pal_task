import 'package:cred_pal_task/core/resources/typography_res.dart'
    show fontLight;
import 'package:cred_pal_task/screens/home_screen.dart';
import 'package:flutter/material.dart';

class CredPalApp extends StatelessWidget {
  const CredPalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CredPal Tasks',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        fontFamily: fontLight,
      ),
      home: const HomeScreen(),
    );
  }
}
