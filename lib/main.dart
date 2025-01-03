import 'package:flutter/material.dart';
import 'modules/onboarding/view/onboarding_page.dart'; // Perbaikan import

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Menghilangkan banner debug
      title: 'COTS App',
      theme: ThemeData(
        primarySwatch: Colors.blue, // Tema utama aplikasi
      ),
      home: OnboardingPage(), // Halaman awal adalah OnboardingPage
    );
  }
}
