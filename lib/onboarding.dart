import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../routes/app_routes.dart';

class OnboardingPage extends StatelessWidget {
  final PageController pageController = PageController(); // PageController

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: pageController, // Menggunakan PageController
              children: [
                // Slide 1
                OnboardingSlide(
                  image: 'assets/images/onboarding1.png',
                  title: 'Selamat Datang di Gojek',
                  description: 'Aplikasi untuk berbagai kebutuhan Anda sehari-hari.',
                ),
                // Slide 2
                OnboardingSlide(
                  image: 'assets/images/onboarding2.png',
                  title: 'Transportasi & Logistik',
                  description: 'Layanan transportasi dan pengiriman barang terpercaya.',
                ),
                // Slide 3
                OnboardingSlide(
                  image: 'assets/images/onboarding3.png',
                  title: 'Pesan Makan & Belanja',
                  description: 'Pesan makanan dan belanja kebutuhan dengan mudah.',
                ),
              ],
            ),
          ),
          // Tombol Navigasi
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                Get.toNamed(AppRoutes.LOGIN); // Navigasi ke Login Page
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: const EdgeInsets.symmetric(vertical: 16.0),
              ),
              child: const Text(
                'Mulai',
                style: TextStyle(fontSize: 16.0, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OnboardingSlide extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const OnboardingSlide({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            height: 200,
            width: 200,
          ),
          const SizedBox(height: 24.0),
          Text(
            title,
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16.0),
          Text(
            description,
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.grey[700],
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
