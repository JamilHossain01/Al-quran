import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'package:islam_alo/tasbih/tasbih_sontroller.dart';


import '../config/style/app_theme.dart';
import '../widget/textwidget.dart';
import 'al_quran_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // List<Color> gridColors = [
  //   Colors.lightGreen.shade900,
  //   Colors.lightGreen.shade800,
  //   Colors.lightGreen.shade700,
  //   Colors.lightGreen.shade600,
  //   Colors.lightGreen.shade500,
  //   Colors.lightGreen.shade400,
  // ];
  // List<Map<String, dynamic>> catInfo = [
  //   {
  //     'imagePath': 'assets/cat/tasbih.png',
  //     'catText': "Tasbih",
  //   },
  //   {'imagePath': 'assets/cat/quran.png', 'catText': 'Hedith'},
  //   {
  //     "imagePath": 'assets/cat/dua.png',
  //     'catText': 'Dua',
  //   },
  //   {
  //     'imagePath': 'assets/cat/quran.png',
  //     'catText': 'Al-Quran',
  //   },
  //   {
  //     'imagePath': 'assets/cat/wallpaper.png',
  //     'catText': 'Wallpaper',
  //   },
  //   {
  //     'imagePath': 'assets/cat/more.png',
  //     'catText': 'More',
  //   },
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 220,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: MyAppTheme.greenColor),
                  child: Column(
                    children: [
                      TextWidget(
                        text: 'السلام',
                        color: MyAppTheme.backgroundColor,
                        textSize: 30,
                        isTitle: true,
                      ),
                      TextWidget(
                        text: 'ASSALAM',
                        color: MyAppTheme.backgroundColor,
                        textSize: 25,
                        isTitle: true,
                      ),
                      TextWidget(
                          text: 'Todays Dua',
                          color: MyAppTheme.backgroundColor,
                          textSize: 15),
                      TextWidget(
                          text: '19 Ramadan 1445 AH',
                          color: MyAppTheme.backgroundColor,
                          textSize: 15),
                      const Padding(
                        padding: EdgeInsets.only(left: 16, right: 1),
                        child: Center(
                          child: Text(
                            'Allah  enough for me.There is no true god but Him,in Him i put my trust,an He is the Lorad of the great Throne,[Repeat tim...',
                            style: TextStyle(
                                wordSpacing: 3,
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                height: 1.5,
                                color: MyAppTheme.backgroundColor),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CommonContainer(
                      color: MyAppTheme.backgroundColor,
                      imagePath: 'assets/svgs/tasbih.svg',
                      title: 'Tasbih',
                      fact: () {
                        Get.to(TasbeehController());
                      },
                    ),
                    CommonContainer(
                      color: MyAppTheme.backgroundColor,
                      imagePath: 'assets/svgs/quran-icon.svg',
                      title: 'Hadith',
                      fact: () {},
                    ),
                    CommonContainer(
                      color: MyAppTheme.backgroundColor,
                      imagePath: 'assets/svgs/doa-icon.svg',
                      title: 'Dua',
                      fact: () {},
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CommonContainer(
                      color: MyAppTheme.backgroundColor,
                      imagePath: 'assets/svgs/quran-icon.svg',
                      title: 'Al-Quran',
                      fact: () {
                        Get.to(AlQuranScreen());
                      },
                    ),
                    const CommonContainerWidgts(
                      color: MyAppTheme.backgroundColor,
                      imagePath: 'assets/cat/wal.png',
                      title: 'Wallpaper',
                    ),
                    const CommonContainerWidgts(
                      color: MyAppTheme.backgroundColor,
                      imagePath: 'assets/cat/more2.png',
                      title: 'More',
                    ),
                  ],
                ),
              )
              // GridView.count(
              //   shrinkWrap: true,
              //   physics: NeverScrollableScrollPhysics(),
              //   crossAxisCount: 3,
              //   mainAxisSpacing: 8,
              //   crossAxisSpacing: 8,
              //   childAspectRatio: 240 / 259,
              //   children: List.generate(catInfo.length, (index) {
              //     return CategoriesWidget(
              //       catText: catInfo[index]['catText'],
              //       imagePath: catInfo[index]['imagePath'],
              //       passedColors: gridColors[index],
              //     );
              //   }),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class CommonContainer extends StatelessWidget {
  const CommonContainer({
    super.key,
    required this.imagePath,
    required this.title,
    required this.color,
    required this.fact,
  });
  final String title, imagePath;
  final Color color;
  final Function fact;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: InkWell(
        onTap: () {
          fact();
        },
        child: Container(
          height: 110,
          width: 110,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: MyAppTheme.greenColor),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: SvgPicture.asset(
                  imagePath,
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
              TextWidget(text: title, color: color, textSize: 18),
            ],
          ),
        ),
      ),
    );
  }
}

class CommonContainerWidgt extends StatelessWidget {
  const CommonContainerWidgt({
    super.key,
    required this.imagePath,
    required this.title,
    required this.color,
  });
  final String title, imagePath;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: InkWell(
        onTap: () {
          print('ok');
        },
        child: Container(
          height: 110,
          width: 110,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: MyAppTheme.greenColor),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Image.asset(
                  imagePath,
                ),
              ),
              TextWidget(text: title, color: color, textSize: 18),
            ],
          ),
        ),
      ),
    );
  }
}

class CommonContainerWidgts extends StatelessWidget {
  const CommonContainerWidgts({
    super.key,
    required this.imagePath,
    required this.title,
    required this.color,
  });
  final String title, imagePath;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: InkWell(
        onTap: () {
          print('ok');
        },
        child: Container(
          height: 110,
          width: 110,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: MyAppTheme.greenColor),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Image.asset(
                  imagePath,
                  height: 30,
                ),
              ),
              TextWidget(text: title, color: color, textSize: 18),
            ],
          ),
        ),
      ),
    );
  }
}
