import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoriesController extends GetxController {
  final TextEditingController searchController = TextEditingController();
  final searchResults = <String>[].obs;
  void performSearch(String query) {
    searchResults.clear();

    RxList items = [].obs;
    for (var item in items) {
      if (item.toLowerCase().contains(query.toLowerCase())) {
        searchResults.add(item);
      }
    }
  }
  // final count = 0.obs;
  // @override
  // void onInit() {
  //   super.onInit();
  // }

  // @override
  // void onReady() {
  //   super.onReady();
  // }

  // @override
  // void onClose() {
  //   super.onClose();
  // }

  // void increment() => count.value++;
}
