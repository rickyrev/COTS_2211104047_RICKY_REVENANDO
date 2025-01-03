import 'package:get/get.dart';

class LoginController extends GetxController {
  // Variabel untuk mengatur state
  var isLoading = false.obs; // Contoh penggunaan Rx untuk state reaktif

  // Fungsi untuk login
  Future<void> login(String username, String password) async {
    isLoading.value = true;
    try {
      // Proses login
      await Future.delayed(Duration(seconds: 2)); // Simulasi API Call
      // Validasi login berhasil atau gagal
      print('Login berhasil dengan username: $username');
    } catch (e) {
      print('Terjadi kesalahan: $e');
    } finally {
      isLoading.value = false;
    }
  }
}
