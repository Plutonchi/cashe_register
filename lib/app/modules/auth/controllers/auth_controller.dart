import 'dart:developer';

import 'package:cashe_register/app/modules/home/views/home_view.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  Rx<String> name = "".obs;
  Rx<String> email = "".obs;
  Rx<String> password = "".obs;
  RxBool isVisible = true.obs;
  RxBool processing = false.obs;

  Future<void> signIn() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email.value,
        password: password.value,
      );
      Get.to(HomeView());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        log('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        log('Wrong password provided for that user.');
      }
    }
  }
  // CollectionReference users = FirebaseFirestore.instance.collection('users');
  // Future<void> addUser() {
  //   return users
  //       .add({
  //         'name': name.value,
  //         'email': email.value,
  //         'password': password.value,
  //       })
  //       .then((value) => log("User Added"))
  //       .catchError((error) => log("Failed to add user: $error"));
  // }

  // Future<void> signUp() async {
  //   try {
  //     await FirebaseAuth.instance
  //         .createUserWithEmailAndPassword(
  //           email: email.value,
  //           password: password.value,
  //         )
  //         .then((value) => {
  //               addUser(),
  //               Get.to(HomeView()),
  //             });
  //   } on FirebaseAuthException catch (e) {
  //     if (e.code == 'weak-password') {
  //       log('The password provided is too weak.');
  //     } else if (e.code == 'email-already-in-use') {
  //       log('The account already exists for that email.');
  //     }
  //   } catch (e) {
  //     log('$e');
  //   }
  // }

  // void snackBar(String text) {
  //   AuthView().scaffoldKey.currentState!.showSnackBar(
  //         SnackBar(
  //           duration: const Duration(seconds: 4),
  //           backgroundColor: AppColors.yellow,
  //           content: Text(
  //             text,
  //             textAlign: TextAlign.center,
  //             style: const TextStyle(
  //               fontSize: 25,
  //               color: Colors.red,
  //             ),
  //           ),
  //         ),
  //       );
  // }

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
