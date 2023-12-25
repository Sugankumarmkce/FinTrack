import 'package:fintrack/core/app_export.dart';
import 'package:fintrack/presentation/login_screen/models/login_model.dart';
import 'package:flutter/material.dart';

class LoginController extends GetxController {
  TextEditingController emailOneController = TextEditingController();

  TextEditingController group10198Controller = TextEditingController();

  Rx<LoginModel> loginModelObj = LoginModel().obs;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
// TODO: implement Actions
    });
  }

  @override
  void onClose() {
    super.onClose();
    emailOneController.dispose();
    group10198Controller.dispose();
  }
}
