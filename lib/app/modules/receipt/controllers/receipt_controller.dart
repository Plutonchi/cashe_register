import 'package:cashe_register/app/modules/categories/views/english_category_view.dart';
import 'package:cashe_register/app/modules/receipt/views/receipt_view.dart';
import 'package:cashe_register/app/utils/categ_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ReceiptController extends GetxController {
  // Rx<String> mainTeachValue = 'выбор учителя'.obs;

  // Rx<String> subCoursValue = 'выбор категори'.obs;

  RxList<String?> subCategList = <String>[].obs;

  RxInt selectCoursName = 0.obs;

  RxInt selectCoursLevel = 0.obs;

  RxInt selectCoursTeach = 0.obs;

  RxDouble kItemExtent = 50.0.obs;
  final formKey = GlobalKey<FormState>();

  final firstNameController = TextEditingController();

  final amountController = TextEditingController();
  final RxList<Invoice> invoices = <Invoice>[].obs;
  void showSnackBar() {
    SnackBar(
      content: Text("You do not selected categories"),
      duration: Duration(
        seconds: 5,
      ),
    );
  }

// List<String> selectedCategories
  addInvoice() {
    String formattedTime = DateFormat('dd-MM-yyyy').format(DateTime.now());

    if (formKey.currentState!.validate()) {
      final invoice = Invoice(
        firstName: firstNameController.text,
        amount: amountController.text,
        invoiceNumber: '${invoices.length + 1}',
        date: formattedTime,
        categories: mainteach.toString(),
      );
      invoices.add(invoice);
      firstNameController.clear();
      amountController.clear();
      Get.to(EnglishCategory(
        kvitansiyalar: invoices,
      ));
    }
  }

  // addInvoice() {
  //   String formattedTime = DateFormat('dd-MM-yyyy').format(DateTime.now());

  //   if (formKey.currentState!.validate()) {
  //     final invoice = Invoice(
  //       firstName: firstNameController.text,
  //       amount: amountController.text,
  //       invoiceNumber: '${invoices.length + 1}',
  //       date: formattedTime,
  //     );
  //     invoices.add(invoice);
  //     firstNameController.clear();
  //     amountController.clear();
  //     Get.to(EnglishCategory(
  //       kvitansiyalar: invoices,
  //     ));
  //   }
  void selectedMainCateg(List<String>? value) {
    if (value == 'select category') {
      subCategList.value = [];
    } else if (value == 'janibek') {
      subCategList.value = janibek;
    } else if (value == 'aisha') {
      subCategList.value = aisha;
    } else if (value == 'rahmatullo') {
      subCategList.value = rahmatullo;
    } else if (value == 'olymjon') {
      subCategList.value = olymjon;
    } else if (value == 'shoirbek') {
      subCategList.value = shoirbek;
    } else if (value == 'mufazzalhon') {
      subCategList.value = mufazzalhon;
    } else if (value == 'zumradhon') {
      subCategList.value = zumradhon;
    } else if (value == 'boburjon') {
      subCategList.value = boburjon;
    }

    mainteach = value!;

    mainCoursName = '~' as List<String>;
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
