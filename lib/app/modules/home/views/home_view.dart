import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_base_code_v2/app/config/config.dart';
import 'package:get_base_code_v2/app/widgets/custom_button.dart';
import 'package:get_base_code_v2/app/widgets/custom_text_field.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    Widget inputPassword() {
      return Obx(
        () => CustomTextField(
          isPassword: !controller.isPassword.value,
          controller: controller.passwordCtx,
          hint: 'Masukan Password',
          prefixIcons: const Icon(Icons.lock_outline),
          suffixIcons: GestureDetector(
            onTap: () {
              controller.isPassword.value = !controller.isPassword.value;
            },
            child: Icon(
              !controller.isPassword.value
                  ? Icons.visibility_off
                  : Icons.visibility,
              color: AppColor.grey1,
            ),
          ),
        ),
      );
    }

    Widget inputEmail() {
      return CustomTextField(
        controller: controller.emailCtx,
        hint: 'Email',
        prefixIcons: const Icon(Icons.email_outlined),
      );
    }

    Widget inputCurrency() {
      return CustomTextField(
        controller: controller.currencyCtx,
        hint: 'Input Nominal',
        textInputType: TextInputType.number,
        prefixIcons: const Icon(Icons.attach_money),
        inputFormatters: [
          CurrencyTextInputFormatter.currency(
            locale: 'id',
            symbol: 'Rp. ',
            decimalDigits: 0,
          )
        ],
      );
    }

    Widget customInput() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          24.0.height,
          Text(
            'TextField Custom',
            style: AppFont.interBlack1
                .copyWith(fontWeight: AppFont.extraBold, fontSize: 16.sp),
          ),
          const Divider(),
          12.0.height,
          inputEmail(),
          12.0.height,
          inputPassword(),
          12.0.height,
          inputCurrency(),
        ],
      );
    }

    customButton() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Button Custom',
            style: AppFont.interBlack1
                .copyWith(fontWeight: AppFont.extraBold, fontSize: 16.sp),
          ),
          const Divider(),
          12.0.height,
          CustomButton(
            isLoading: false,
            func: () {},
            text: 'Deffault',
            btnStyle: AppButtonStyle.btnDefault,
          ),
          12.0.height,
          CustomButton(
            isLoading: false,
            func: () {},
            text: 'Outlane',
            textColor: AppColor.mainColor,
            btnStyle: AppButtonStyle.btnOutlineMain,
          ),
          12.0.height,
          CustomButton(
            isLoading: false,
            func: () {},
            text: 'Deffault Red',
            btnStyle: AppButtonStyle.btnNegative,
          ),
          12.0.height,
          CustomButton(
            isLoading: false,
            func: () {},
            text: 'Outlane Negative',
            textColor: AppColor.red2,
            btnStyle: AppButtonStyle.btnOutlineNegative,
          ),
          12.0.height,
          CustomButton(
            isLoading: false,
            func: () {},
            text: 'Disable Button',
            btnStyle: AppButtonStyle.btnDisable,
          ),
        ],
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Example Use'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customInput(),
              24.0.height,
              customButton(),
            ],
          ),
        ),
      ),
    );
  }
}
