import 'package:get/get.dart';

class OnboardingController extends GetxController {
  // Index halaman yang sedang ditampilkan
  var currentPage = 0.obs;

  // Total jumlah halaman onboarding
  final totalPages = 3;

  get updatePage => null;

  get isOnboardingCompleted => null;

  // Fungsi untuk memperbarui halaman saat pengguna berpindah slide
  void updatePageIndex(int index) {
    currentPage.value = index;
  }

  // Fungsi untuk memulai aplikasi dan navigasi ke halaman login
  void navigateToLogin() {
    Get.offNamed('/login'); // Ganti halaman ke rute '/login'
  }

  void completeOnboarding() {}
}
