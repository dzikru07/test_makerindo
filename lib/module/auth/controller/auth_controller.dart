import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthController extends GetxController {
  final box = GetStorage();

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }

  void login() {
    if (usernameController.text == 'admin' &&
        passwordController.text == 'admin') {
      Get.snackbar('Success', 'Register success',
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.green,
          colorText: Colors.white);

      Get.toNamed('/home');
    } else {
      Get.snackbar('Error', 'Username or password is wrong',
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.red,
          colorText: Colors.white);
    }
  }

  RxList userList = [].obs;

  void register() {
    if (usernameController.text.isNotEmpty &&
        passwordController.text.isNotEmpty &&
        emailController.text.isNotEmpty) {
      userList.add({
        'username': usernameController.text,
        'password': passwordController.text,
        'email': emailController.text,
      });
      Get.snackbar('Success', 'Register success');
    } else {
      Get.snackbar('Error', 'Please fill all fields');
    }
  }
}
