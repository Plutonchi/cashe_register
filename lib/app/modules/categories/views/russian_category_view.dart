import 'package:cashe_register/app/constans/app_colors.dart';
import 'package:cashe_register/app/constans/app_text.dart';
import 'package:cashe_register/app/modules/categories/widgets/search_widget.dart';
import 'package:cashe_register/app/modules/home/controllers/home_controller.dart';
import 'package:cashe_register/app/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class RussianCategory extends StatelessWidget {
  RussianCategory({Key? key}) : super(key: key);
  final _homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: CustomAppBar(
            text: AppText.rusText,
            child: IconButton(
                onPressed: () {
                  _homeController.navigateToHomeView(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: AppColors.whiteF5,
                )),
          ),
          preferredSize: Size.fromHeight(kToolbarHeight)),
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            SearchWidget()
          ],
        ),
      ),
    );
  }
}
