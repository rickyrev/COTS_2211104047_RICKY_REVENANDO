import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  // Fungsi untuk login
  void login() {
    String email = emailController.text;
    String password = passwordController.text;

    if (email.isNotEmpty && password.isNotEmpty) {
      // Proses login berhasil (misalnya verifikasi email dan password)
      Get.snackbar('Success', 'Login berhasil');
      // Setelah login berhasil, bisa mengarahkan ke halaman Home
      Get.offNamed('/home');
    } else {
      // Menampilkan pesan kesalahan jika form kosong
      Get.snackbar('Error', 'Mohon lengkapi form login');
    }
  }
}
