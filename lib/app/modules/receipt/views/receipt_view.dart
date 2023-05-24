import 'package:cashe_register/app/constans/app_colors.dart';
import 'package:cashe_register/app/constans/app_text.dart';
import 'package:cashe_register/app/constans/app_text_styles.dart';
// import 'package:cashe_register/app/modules/categories/views/english_category_view.dart';
import 'package:cashe_register/app/modules/home/controllers/home_controller.dart';
import 'package:cashe_register/app/modules/receipt/controllers/receipt_controller.dart';
import 'package:cashe_register/app/modules/receipt/widgets/vertical_divider_widget.dart';
import 'package:cashe_register/app/utils/categ_list.dart';
import 'package:cashe_register/app/widgets/custom_app_bar.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ReceiptView extends StatefulWidget {
  const ReceiptView({super.key});

  @override
  State<ReceiptView> createState() => _ReceiptViewState();
}

class _ReceiptViewState extends State<ReceiptView> {
  final HomeController _homeController = Get.put(HomeController());

  final ReceiptController _receiptController = Get.put(ReceiptController());

  void _showDialog(Widget? child) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => Container(
        height: 300,
        padding: const EdgeInsets.only(top: 6.0),
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        color: CupertinoColors.systemBackground.resolveFrom(context),
        child: SafeArea(
          top: false,
          child: child!,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var me = DateTime.now();
    var formattedTime = DateFormat('HH:mm').format(me);
    var formattedDate = DateFormat('dd/ MM  /y').format(me);
    final sizeWidth = MediaQuery.of(context).size.width;
    final sizeHeight = MediaQuery.of(context).size.height;
    return ScaffoldMessenger(
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight),
            child: CustomAppBar(
              text: AppText.receipt.toUpperCase(),
              // textAlign: TextAlign.center,
              // style: AppTextStyle.whiteS24FGen,
              child: IconButton(
                onPressed: () {
                  _homeController.navigateToHomeView(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios_new_outlined,
                  size: 22,
                  color: AppColors.white,
                ),
              ),
            )),
        backgroundColor: AppColors.white,
        body: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Column(
            children: [
              Form(
                key: _receiptController.formKey,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 36,
                  ),
                  child: Center(
                    child: Container(
                      width: sizeWidth * 0.9,
                      height: sizeHeight * 0.6,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: AppColors.grey,
                            blurRadius: 6.5,
                            offset: Offset(0.5, 0.5), // Shadow position
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(AppText.kvi.toUpperCase(),
                              style: AppTextStyle.S16W700FGen),
                          SizedBox(
                            width: sizeWidth * 0.85,
                            height: sizeHeight * 0.18,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CupertinoButton(
                                  padding: EdgeInsets.zero,
                                  onPressed: () {
                                    _showDialog(
                                      CupertinoPicker(
                                        magnification: 1.22,
                                        squeeze: 1.2,
                                        useMagnifier: true,
                                        itemExtent: _receiptController
                                            .kItemExtent.value,
                                        onSelectedItemChanged:
                                            (int selectedItem) {
                                          setState(() {
                                            _receiptController.selectCoursName
                                                .value = selectedItem;
                                          });
                                        },
                                        children: List<Widget>.generate(
                                            mainCoursName.length, (int index) {
                                          return Center(
                                            child: Text(
                                              mainCoursName[index],
                                            ),
                                          );
                                        }),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    mainCoursName[_receiptController
                                        .selectCoursName.value],
                                    style: const TextStyle(
                                      fontSize: 22.0,
                                    ),
                                  ),
                                ),
                                const VerticalDividerWidget(),
                                CupertinoButton(
                                  padding: EdgeInsets.zero,
                                  onPressed: () {
                                    _showDialog(
                                      CupertinoPicker(
                                        magnification: 1.22,
                                        squeeze: 1.2,
                                        useMagnifier: true,
                                        itemExtent: _receiptController
                                            .kItemExtent.value,
                                        onSelectedItemChanged:
                                            (int selectedItem) {
                                          setState(() {
                                            _receiptController.selectCoursTeach
                                                .value = selectedItem;
                                          });
                                        },
                                        children: List<Widget>.generate(
                                            mainteach.length, (int index) {
                                          return Center(
                                            child: Text(
                                              mainteach[index],
                                            ),
                                          );
                                        }),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    mainteach[_receiptController
                                        .selectCoursTeach.value],
                                    style: const TextStyle(
                                      fontSize: 22.0,
                                    ),
                                  ),
                                ),
                                const VerticalDividerWidget(),
                                CupertinoButton(
                                  padding: EdgeInsets.zero,
                                  onPressed: () {
                                    _showDialog(
                                      CupertinoPicker(
                                        magnification: 1.22,
                                        squeeze: 1.2,
                                        useMagnifier: true,
                                        itemExtent: _receiptController
                                            .kItemExtent.value,
                                        onSelectedItemChanged:
                                            (int selectedItem) {
                                          setState(() {
                                            _receiptController.selectCoursLevel
                                                .value = selectedItem;
                                          });
                                        },
                                        children: List<Widget>.generate(
                                            selectCoursLevel.length,
                                            (int index) {
                                          return Center(
                                            child: Text(
                                              selectCoursLevel[index],
                                            ),
                                          );
                                        }),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    selectCoursLevel[_receiptController
                                        .selectCoursLevel.value],
                                    style: const TextStyle(
                                      fontSize: 22.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(formattedTime,
                                    textAlign: TextAlign.center,
                                    style: AppTextStyle.w700S16),
                                const SizedBox(
                                  height: 20,
                                  width: 20,
                                ),
                                Text(formattedDate,
                                    textAlign: TextAlign.center,
                                    style: AppTextStyle.w700S16),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 14),
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              controller:
                                  _receiptController.firstNameController,
                              decoration: InputDecoration(
                                fillColor: AppColors.whiteF5,
                                filled: true,
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: const BorderSide(
                                      color: Colors.blue, width: 2.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: const BorderSide(
                                      color: AppColors.whiteF5, width: 2.0),
                                ),
                                labelText: AppText.name,
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Пожалуйста напишите Имя ученика';
                                }
                                return null;
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 26,
                            ),
                            child: TextFormField(
                              controller: _receiptController.amountController,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: AppColors.whiteF5,
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: const BorderSide(
                                      color: Colors.blue, width: 2.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: const BorderSide(
                                      color: AppColors.whiteF5, width: 2.0),
                                ),
                                labelText: AppText.price,
                              ),
                              keyboardType: TextInputType.number,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Пожалуйста напишите сумму';
                                }
                                return null;
                              },
                            ),
                          ),
                          InkWell(
                              onTap: () {
                                _receiptController.addInvoice();
                              },
                              child: Container(
                                height: sizeHeight * 0.065,
                                width: sizeWidth * 0.8,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: AppColors.green50,
                                ),
                                child: Center(
                                  child: Text(AppText.payment.toUpperCase(),
                                      style: AppTextStyle.whiteS16W700FGen),
                                ),
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

ReceiptView receiptView = const ReceiptView();
