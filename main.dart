import 'package:flutter/material.dart';
import 'package:kalgidhar_trust/screens/drug_deAddiction.dart';
import 'package:kalgidhar_trust/screens/education.dart';
import 'package:kalgidhar_trust/screens/sant_attar_singh_ji.dart';
import 'package:kalgidhar_trust/screens/sant_iqbal_singh_ji.dart';
import 'package:kalgidhar_trust/screens/sant_teja_singh_ji.dart';
import 'package:kalgidhar_trust/screens/Home.dart';
import 'package:kalgidhar_trust/screens/women_empowerment.dart';
import 'package:kalgidhar_trust/screens/akal_employment.dart';
import 'package:kalgidhar_trust/screens/kalgidhar_trust.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      routes: {
        'home': (context) => Home(),
        'SASJ': (context) => SantAttarSinghJi(),
        'STSJ': (context) => SantTejaSinghJi(),
        'SISJ': (context) => SantIqbalSinghJi(),
        'education': (context) => EducationScreen(),
        'drug':(context) => DrugDeAddictionScreen(),
        'women':(context) => WomenEmpowermentScreen(),
        'employment':(context) => AkalEmploymentScreen(),
        'kalgidharTrust':(context) => KalgidharTrust(),
      },
    );
  }
}
