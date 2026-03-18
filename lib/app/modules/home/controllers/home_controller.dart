import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  RxBool isPassword = false.obs;
  TextEditingController emailCtx = TextEditingController(text: '');
  TextEditingController passwordCtx = TextEditingController(text: '');
  TextEditingController currencyCtx = TextEditingController(text: '');
}
