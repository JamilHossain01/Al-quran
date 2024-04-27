import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:islam_alo/routes/routes.dart';
import 'package:islam_alo/tasbih/tasbih_sontroller.dart';

void main() { Get.lazyPut(() => TasbeehController());
  runApp(GetMaterialApp(debugShowCheckedModeBanner: false,
    initialRoute: AppPage.getnavbar(),
    getPages: AppPage.routes,
  ));
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     Get.lazyPut(() => TasbeehController());
//
//     return const GetMaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false,
//       // home: UserListView(),
//       home: TasbeehScreen(),
//     );
//   }
// }
