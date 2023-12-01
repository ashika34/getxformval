import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final formKey = GlobalKey<FormState>();

  String? validateEmail(String? email) {
    if (!GetUtils.isEmail(email ?? '')) {
      return 'Email is not Valid';
    }
    return null;
  }

  String? validatePassword(String? pwd) {
    if (!GetUtils.isLengthGreaterOrEqual(pwd, 6)) {
      return 'Password is not Valid';
    }
    return null;
  }

  Future<void> onLogin() async {
    if (formKey.currentState!.validate()) {
      Get.snackbar(
        'Success',
        'Login Successful',
        snackPosition: SnackPosition.BOTTOM,
        colorText: Colors.white,
        backgroundColor: Colors.green,
      );
      return;
    }
    Get.snackbar(
      'Error',
      'Login Failed',
      snackPosition: SnackPosition.BOTTOM,
      colorText: Colors.white,
      backgroundColor: Colors.red,
    );
  }
}