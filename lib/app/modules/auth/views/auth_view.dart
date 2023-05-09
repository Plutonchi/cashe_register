import 'package:cashe_register/app/constans/app_colors.dart';
import 'package:cashe_register/app/modules/auth/controllers/auth_controller.dart';
import 'package:cashe_register/app/modules/home/views/home_view.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

class AuthView extends GetView<AuthController> {
  AuthView({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldMessengerState> scaffoldKey =
      GlobalKey<ScaffoldMessengerState>();
  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
        key: scaffoldKey,
        child: Scaffold(
          body: SafeArea(
            child: Form(
              key: _formKey,
              child: Column(children: [
                Container(
                  height: 280.0,
                  width: 900,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(105.0),
                          bottomRight: Radius.circular(105.0))),
                  child: Center(
                    child: Image.asset(
                      "images/photo.png",
                    ),
                  ),
                ),
                const SizedBox(
                  height: 90,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13)),
                      labelText: 'Логин',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13)),
                      labelText: 'Пароль',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 120,
                ),
                InkWell(
                  onTap: () {
                    Get.to(HomeView());
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.black53,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 150,
                        vertical: 10,
                      ),
                      child: Text(
                        'Продолжить',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ));
  }
}
