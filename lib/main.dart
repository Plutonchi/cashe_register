import 'package:cashe_register/app/modules/auth/views/auth_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// import 'package:firebase_core_web/src/interop/app.dart';

import 'package:get/get.dart';

// import 'app/routes/app_pages.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      //     )
      );
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      // initialRoute: AppPages.INITIAL,
      // getPages: AppPages.routes,
      home: AuthView(),
    ),
  );
}

      // options: const FirebaseOptions(
      //     apiKey: "AIzaSyBu7Wa3ezYPk6CGuBw7gTWHtRYUhc2fqXU",
      //     projectId: "cashe-register",
      //     messagingSenderId: "282814697879",
      //     appId: "1:282814697879:web:5d1b5880be34cfdf81f4d2",
      //     measurementId: "G-XPBVDSK9P0",