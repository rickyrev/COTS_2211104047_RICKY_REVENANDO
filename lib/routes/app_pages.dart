import 'package:get/get.dart';
import 'package:cots_/modules/login/login_page.dart'; // Import login_page.dart
import 'package:cots_/modules/login/login_binding.dart'; // Import login_binding.dart
import 'package:cots_/modules/onboarding/view/onboarding_page.dart'; // Import onboarding_page.dart
import 'package:cots_/modules/onboarding/onboarding_binding.dart'; // Import onboarding_binding.dart
import 'package:cots_/modules/board_page/view/home_page.dart'; // Import home_page.dart
import 'package:cots_/modules/login/login_binding.dart'; // Import home_binding.dart
import 'package:cots_/modules/board_page/view/promo_page.dart'; // Import promo_page.dart 
import 'package:cots_/modules/board_page/view/home_page.dart'; // Import order_page.dart
import 'package:cots_/modules/board_page/view/pesanan_page.dart'; // Import order_binding.dart
import 'app_routes.dart'; // Import app_routes.dart

class AppPages {
  static final pages = [
    // Halaman Onboarding
    GetPage(
      name: AppRoutes.ONBOARDING,
      page: () => OnboardingPage(),
      binding: OnboardingBinding(),
    ),
    
    // Halaman Login
    GetPage(
      name: AppRoutes.LOGIN,
      page: () => LoginPage(), // Pemanggilan halaman login yang benar
      binding: LoginBinding(), // Binding LoginBinding untuk LoginPage
    ),
    
    // Halaman Home
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    
    // Halaman Promo
    GetPage(
      name: AppRoutes.PROMO,
      page: () => PromoPage(),
      binding: PromoBinding(),
    ),
    
    // Halaman Order
    GetPage(
      name: AppRoutes.ORDER,
      page: () => OrderPage(),
      binding: OrderBinding(),
    ),
  ];
}
