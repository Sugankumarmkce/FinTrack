import 'controller/login_controller.dart';
import 'package:fintrack/core/app_export.dart';
import 'package:fintrack/core/utils/validation_functions.dart';
import 'package:fintrack/widgets/app_bar/custom_app_bar.dart';
import 'package:fintrack/widgets/custom_button.dart';
import 'package:fintrack/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(54),
                leadingWidth: 40,
                leading: CustomImageView(
                    svgPath: ImageConstant.imgArrowleft,
                    height: getSize(24),
                    width: getSize(24),
                    margin: getMargin(left: 16, top: 13, bottom: 17),
                    onTap: () {
                      onTapImgArrowleft();
                    }),
                centerTitle: true,
                title: Text("lbl_sign_in".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtGilroySemiBold24)),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 16, top: 14, right: 16, bottom: 14),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("lbl_email".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroyMedium16),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.emailOneController,
                              hintText: "lbl_abc_gmail_com".tr,
                              margin: getMargin(top: 8),
                              textInputType: TextInputType.emailAddress),
                          Padding(
                              padding: getPadding(top: 18),
                              child: Text("lbl_password".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtGilroyMedium16)),
                          Obx(() => CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.group10198Controller,
                              hintText: "lbl_enter_password".tr,
                              margin: getMargin(top: 7),
                              padding: TextFormFieldPadding.PaddingT12,
                              fontStyle: TextFormFieldFontStyle.GilroyMedium16,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              suffix: InkWell(
                                  onTap: () {
                                    controller.isShowPassword.value =
                                        !controller.isShowPassword.value;
                                  },
                                  child: Container(
                                      margin: getMargin(all: 12),
                                      child: CustomImageView(
                                          svgPath:
                                              controller.isShowPassword.value
                                                  ? ImageConstant.imgEye
                                                  : ImageConstant.imgEye))),
                              suffixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(44)),
                              validator: (value) {
                                if (value == null ||
                                    (!isValidPassword(value,
                                        isRequired: true))) {
                                  return "Please enter valid password";
                                }
                                return null;
                              },
                              isObscureText: controller.isShowPassword.value)),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                  padding: getPadding(top: 12, right: 6),
                                  child: Text("msg_forgot_password".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtGilroyMedium14))),
                          CustomButton(
                              height: getVerticalSize(50),
                              text: "lbl_sign_in".tr,
                              margin: getMargin(top: 25, bottom: 5))
                        ])))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
