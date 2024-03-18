import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:get/get.dart';
import 'package:task4_3/app/data/app_colors.dart';

import '../../../data/app_images.dart';
import '../../widgets/button_primary.dart';
import '../../widgets/text_field_c.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});
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
                  'Welcome Back!',
                  style: TextStyle(
                    color: AppColors.whiteColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Text(
                  'Sign In to your account',
                  style: TextStyle(
                    color: AppColors.greyColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 50),
                ElevatedButton(
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(
                      const Size(double.infinity, 48),
                    ),
                    backgroundColor: MaterialStateProperty.all(
                      AppColors.secondaryColor,
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          AppImages.google,
                          height: 18,
                          width: 18,
                        ),
                        const SizedBox(width: 12),
                        const Text(
                          'Sign in with Google',
                          style: TextStyle(
                            color: AppColors.whiteColor,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 22),
                const Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: AppColors.greyColor,
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                      "OR",
                      style: TextStyle(color: AppColors.greyColor),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Divider(
                        color: AppColors.greyColor,
                      ),
                    ),
                  ],
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 54),
                ButtonPrimary(
                  teks: "Sign In",
                  onPressed: () {
                    controller.handleLogin();
                  },
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account?",
                      style: TextStyle(
                        color: AppColors.greyColor,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.offAndToNamed('/register');
                      },
                      child: const Text(
                        ' Sign Up',
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
