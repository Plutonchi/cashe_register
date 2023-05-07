import 'package:cashe_register/app/constans/app_colors.dart';
import 'package:cashe_register/app/constans/app_text.dart';
import 'package:cashe_register/app/constans/app_text_styles.dart';
import 'package:cashe_register/app/modules/categories/widgets/search_widget.dart';
import 'package:cashe_register/app/modules/home/controllers/home_controller.dart';
import 'package:cashe_register/app/modules/receipt/views/receipt_view.dart';
import 'package:cashe_register/app/widgets/app_bar_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EnglishCategory extends StatelessWidget {
  EnglishCategory({
    Key? key,
    this.kvitansiyalar,
  }) : super(key: key);
  final _homeController = Get.put(HomeController());

  final List<Invoice>? kvitansiyalar;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          children: [
            AppBarContainer(
              menu: AppText.englText,
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
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 900,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: kvitansiyalar!.length,
                itemBuilder: (context, index) {
                  final invoice = kvitansiyalar![index];
                  return ListTile(
                    title: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.09,
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                                color: AppColors.grey,
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(
                                  0,
                                  3,
                                ))
                          ],
                          borderRadius: BorderRadius.circular(10.06),
                          color: AppColors.whiteFC),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(invoice.firstName,
                                  textAlign: TextAlign.center,
                                  style: AppTextStyle.black22wBold),
                              Text('№${invoice.invoiceNumber}',
                                  textAlign: TextAlign.center,
                                  style: AppTextStyle.greyOA16wBold),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('Цена - ${invoice.amount} ',
                                  textAlign: TextAlign.center,
                                  style: AppTextStyle.black15wBlodFgen),
                              Text(
                                invoice.date.toString(),
                                textAlign: TextAlign.center,
                                style: AppTextStyle.green16w700,
                              ),
                              Text('Teacher - ${invoice.categories} ',
                                  textAlign: TextAlign.center,
                                  style: AppTextStyle.black15wBlodFgen),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
