import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:get/get.dart';

import '../../../data/app_colors.dart';
import '../../../data/app_images.dart';
import '../../login/controllers/login_controller.dart';
import '../../widgets/button_primary.dart';
import '../../widgets/text_field_c.dart';
import '../../widgets/tile_menu_profile.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final loginC = Get.find<LoginController>();
  HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    var username = loginC.usernameController.text.obs;
    var email = loginC.emailController.text.obs;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Your Profile',
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.whiteColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        IconlyLight.search,
                        color: AppColors.whiteColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 34),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    AppImages.avatar,
                    width: 120,
                    height: 120,
                  ),
                ),
                const SizedBox(height: 16),
                Obx(() {
                  return Text(
                    username.value,
                    style: const TextStyle(
                      fontSize: 16,
                      color: AppColors.whiteColor,
                      fontWeight: FontWeight.w500,
                    ),
                  );
                }),
                Obx(() {
                  return Text(
                    email.value,
                    style: const TextStyle(
                      color: AppColors.greyColor,
                      fontWeight: FontWeight.w500,
                    ),
                  );
                }),
                const SizedBox(height: 36),
                Divider(
                  color: AppColors.greyColor.withOpacity(0.2),
                ),
                const SizedBox(height: 24),
                TileMenuProfile(
                  title: 'Edit Profile',
                  icon: IconlyLight.profile,
                  onTap: () {
                    controller.usernameController.clear();
                    controller.emailController.clear();
                    Get.bottomSheet(
                      isScrollControlled: true,
                      Container(
                        padding: const EdgeInsets.all(24),
                        decoration: const BoxDecoration(
                          color: AppColors.bgCardColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24),
                            topRight: Radius.circular(24),
                          ),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Edit Profile',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: AppColors.whiteColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    username.value = username.value;
                                    email.value = email.value;
                                    Get.back();
                                  },
                                  icon: const Icon(
                                    IconlyLight.closeSquare,
                                    color: AppColors.whiteColor,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 24),
                            TextFieldC(
                                obscureText: false,
                                hintText: "Username",
                                prefixIcon: IconlyLight.profile,
                                controller: controller.usernameController),
                            const SizedBox(height: 16),
                            TextFieldC(
                                obscureText: false,
                                hintText: "Username",
                                prefixIcon: IconlyLight.message,
                                controller: controller.emailController),
                            const SizedBox(height: 24),
                            ButtonPrimary(
                                teks: 'Save',
                                onPressed: () {
                                  controller.handleSave();
                                  if (controller
                                          .usernameController.text.isNotEmpty &&
                                      controller
                                          .emailController.text.isNotEmpty) {
                                    username.value =
                                        controller.usernameController.text;
                                    email.value =
                                        controller.emailController.text;
                                  }
                                })
                          ],
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 16),
                TileMenuProfile(
                  title: 'Notification Setting',
                  icon: IconlyLight.notification,
                  onTap: () {},
                ),
                const SizedBox(height: 16),
                TileMenuProfile(
                  title: 'Security and Privacy',
                  icon: IconlyLight.lock,
                  onTap: () {},
                ),
                const SizedBox(height: 16),
                TileMenuProfile(
                  title: 'Log Out',
                  icon: IconlyLight.logout,
                  color: AppColors.redColor,
                  onTap: () {
                    Get.offAllNamed('/login');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
