import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:islam_alo/controler/controller.dart';
import 'package:islam_alo/pages/home.dart';
import 'package:islam_alo/pages/tasbih.dart';
import 'package:islam_alo/pages/qibla.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final controller = Get.put(NavBarController());


  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavBarController>(builder: (context) {
      return Scaffold(
        body: IndexedStack(
          index: controller.tabIndex,
          children: [QiblaScreen(),HomeScreen(), TasbeehScreen()],
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: controller.tabIndex,
            onTap: controller.changeTabIndex,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/cat/qibla.png',
                  height: 30,
                  fit: BoxFit.cover,
                ),
                label: 'Qibla',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15), color: Colors.amber),
                  child: Image.asset(
                    'assets/cat/home.png',
                    height: 30,
                    fit: BoxFit.cover,
                  ),
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/svgs/tasbih.svg',color: Colors.black,
                  height: 30,
                  fit: BoxFit.cover,
                ),
                label: 'Tasbhi',
              ),
            ]),
      );
    });
  }
}
