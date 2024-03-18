import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:get/get.dart';

import '../../../data/app_colors.dart';
import '../../../data/app_images.dart';
import '../../widgets/button_primary.dart';
import '../../widgets/text_field_c.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 50,
          ),
          child: Center(
            child: Column(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(AppImages.logo),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Hello There!',
                  style: TextStyle(
                    color: AppColors.whiteColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Text(
                  'Create your account & enjoy',
                  style: TextStyle(
                    color: AppColors.greyColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 20),
                TextFieldC(
                  controller: controller.usernameController,
                  hintText: 'Type your Username',
                  obscureText: false,
                  prefixIcon: IconlyLight.profile,
                ),
                const SizedBox(height: 16),
                TextFieldC(
                  controller: controller.emailController,
                  hintText: 'Type your Email',
                  obscureText: false,
                  prefixIcon: IconlyLight.message,
                ),
                const SizedBox(height: 16),
                TextFieldC(
                  controller: controller.passwordController,
                  hintText: 'Type your Password',
                  obscureText: true,
                  prefixIcon: IconlyLight.lock,
                ),
                const SizedBox(height: 16),
                const SizedBox(height: 54),
                ButtonPrimary(
                  teks: "Sign Up",
                  onPressed: () {
                    controller.handleRegister();
                  },
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account?",
                      style: TextStyle(
                        color: AppColors.greyColor,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.offAndToNamed('/login');
                      },
                      child: const Text(
                        ' Sign In',
                        style: TextStyle(
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
