import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          _buildOnboardingSlide(
            context,
            title: "Selamat Datang di COTS",
            description: "Aplikasi inovatif untuk mendukung kebutuhan Anda!",
            image: "assets/images/onboarding1.png",
          ),
          _buildOnboardingSlide(
            context,
            title: "Kemudahan Akses",
            description: "Nikmati kemudahan navigasi dan fitur menarik.",
            image: "assets/images/onboarding2.png",
          ),
          _buildOnboardingSlide(
            context,
            title: "Mulai Sekarang",
            description: "Tekan tombol di bawah untuk memulai pengalaman baru!",
            image: "assets/images/onboarding3.png",
            isLast: true,
          ),
        ],
      ),
    );
  }

  Widget _buildOnboardingSlide(BuildContext context,
      {required String title,
      required String description,
      required String image,
      bool isLast = false}) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            height: 300,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 20),
          Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Text(
            description,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          if (isLast)
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login'); // Navigasi ke halaman login
              },
              child: const Text("Mulai"),
            ),
        ],
      ),
    );
  }
}
