import 'package:cashe_register/app/constans/app_colors.dart';
import 'package:cashe_register/app/constans/app_text.dart';
import 'package:cashe_register/app/modules/categories/widgets/search_widget.dart';
import 'package:cashe_register/app/modules/home/controllers/home_controller.dart';
import 'package:cashe_register/app/widgets/app_bar_container.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItCategory extends StatelessWidget {
  ItCategory({Key? key}) : super(key: key);
  final _homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          children: [
            AppBarContainer(
              menu: AppText.itText,
              text: '14',
              menuicon: IconButton(
                  onPressed: () {
                    _homeController.navigateToHomeView(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: AppColors.whiteF5,
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            const SearchWidget(),
          ],
        ),
      ),
    );
  }
}
