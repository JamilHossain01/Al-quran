import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:islam_alo/navbar/navbar.dart';
import 'package:islam_alo/pages/tasbih.dart';
import 'package:islam_alo/pages/qibla.dart';
import 'package:islam_alo/pages/qibla.dart';

import '../pages/home.dart';

class AppPage{
  static List<GetPage> routes =[
    GetPage(name: navbar,page: ()=>NavBar()),

    GetPage(name: qibla, page:() => QiblaScreen(),),

    GetPage(name: home, page:() => HomeScreen(),),
    GetPage(name: menue, page: () => TasbeehScreen(),),
  ];

  static getnavbar()=>navbar;
  static getqibla()=>qibla;
  static gethome()=>home;

  static getmenue()=>menue;


  static String navbar ='/';
  static String qibla ='/qibla';
  static String home='/home';
  static String menue ='/menue';

}