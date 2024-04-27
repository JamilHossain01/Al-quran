import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:islam_alo/navbar/navbar.dart';
import 'package:islam_alo/pages/qibla.dart';
import 'package:share/share.dart';

import '../config/style/app_theme.dart';
import '../widget/textwidget.dart';


class AlQuranScreen extends StatelessWidget {
  const AlQuranScreen({super.key});

  final String textToCopy = "Hello, world!";

  void _copyToClipboard(BuildContext context) {
    Clipboard.setData(ClipboardData(text: textToCopy));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Text copied to clipboard'),
      ),
    );
  }
  final String textToShare = 'Hello, world!';

  void _shareText(BuildContext context) {
    final RenderBox box = context.findRenderObject() as RenderBox;
    Share.share(textToShare,
        subject: 'Share Text',
        sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:IconButton(onPressed: (){
          Get.offAll(NavBar());
        }, icon:Icon(Icons.arrow_back)),
        actions: [
          Row(
            children: [
              Icon(Icons.chevron_left),
              RotatedBox(quarterTurns: 1, child: Icon(Icons.more_vert)),
              Icon(Icons.chevron_right),
            ],
          )
        ],
        backgroundColor: Colors.green,
        title: Column(
          children: [
            Center(
              child: TextWidget(
                  text: 'আল-ফাতিহা ',
                  color: MyAppTheme.backgroundColor,
                  textSize: 20),
            ),
            Center(
              child: TextWidget(
                  text: 'بسم الله الرحمن الرحيم',
                  color: MyAppTheme.backgroundColor,
                  textSize: 20),
            ),
          ],
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30))),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Center(
              //   child: Text('image'),
              // ),
              // SvgPicture.asset('assets/svgs/quran.svg'),
              // SvgPicture.asset(
              //   'assets/svgs/nomor-surah.svg',
              //   color: Colors.amber,
              // ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Suraah(
                          title: '১',
                          imagePath: 'assets/svgs/nomor-surah.svg',
                        ),
                        Align(
                          child: TextWidget(
                            text: 'بسم الله الرحمن الرحيم',
                            color: Colors.black,
                            textSize: 20,
                            isTitle: true,
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: TextWidget(
                        text: 'الرَّحِيمِ',
                        color: Colors.black,
                        textSize: 20,
                        isTitle: true,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(
                            text: 'বিছমিল্লাহির রাহমানির রাহিম।',
                            color: Colors.black,
                            textSize: 15,
                          ),
                          TextWidget(
                              text:
                                  'শুরু করছি আল্লাহর নামে যিনি পরম করুণাময়, অতি দয়ালু',
                              color: Colors.grey,
                              textSize: 14),
                          PlayCopyShare(),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Suraah(
                          title: '২',
                          imagePath: 'assets/svgs/nomor-surah.svg',
                        ),
                        Align(
                          child: TextWidget(
                            text: 'الْحَمْدُ لِلَّهِ رَبّ',
                            color: Colors.black,
                            textSize: 20,
                            isTitle: true,
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: TextWidget(
                        text: 'الْعَالَمِين',
                        color: Colors.black,
                        textSize: 20,
                        isTitle: true,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(
                            text: 'আল হামদুলিল্লা-হি রাব্বিল আ-লামীন।',
                            color: Colors.black,
                            textSize: 15,
                          ),
                          TextWidget(
                              text:
                                  'যাবতীয় প্রশংসা আল্লাহ তাআলার যিনি সকল সৃষ্টি জগতের পালনকর্তা',
                              color: Colors.grey,
                              textSize: 14),
                          PlayCopyShare(),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Suraah(
                          title: '৩',
                          imagePath: 'assets/svgs/nomor-surah.svg',
                        ),
                        Align(
                          child: TextWidget(
                            text: 'الرَّحْمَنِ',
                            color: Colors.black,
                            textSize: 20,
                            isTitle: true,
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: TextWidget(
                        text: 'الرَّحِيمِ',
                        color: Colors.black,
                        textSize: 20,
                        isTitle: true,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(
                            text: 'আররাহমা-নির রাহীম।',
                            color: Colors.black,
                            textSize: 15,
                          ),
                          TextWidget(
                              text: 'যিনি নিতান্ত মেহেরবান ও দয়ালু।',
                              color: Colors.grey,
                              textSize: 14),
                          PlayCopyShare(),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Suraah(
                          title: '৪',
                          imagePath: 'assets/svgs/nomor-surah.svg',
                        ),
                        Align(
                          child: TextWidget(
                            text: 'مَا لِكِ يَوْمِ',
                            color: Colors.black,
                            textSize: 20,
                            isTitle: true,
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: TextWidget(
                        text: 'لدين',
                        color: Colors.black,
                        textSize: 20,
                        isTitle: true,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(
                            text: 'মা-লিকি ইয়াওমিদ্দীন।',
                            color: Colors.black,
                            textSize: 15,
                          ),
                          TextWidget(
                              text: 'যিনি বিচার দিনের মালিক।',
                              color: Colors.grey,
                              textSize: 14),
                          PlayCopyShare(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PlayCopyShare extends StatelessWidget {
   PlayCopyShare({
    super.key,
  });
  final String textToCopy = "যাবতীয় প্রশংসা আল্লাহ তাআলার যিনি সকল সৃষ্টি জগতের পালনকর্তা";
  void _copyToClipboard(BuildContext context) {
    Clipboard.setData(ClipboardData(text: textToCopy));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Text copied to clipboard'),
      ),
    );
  }
  final String textToShare = 'যাবতীয় প্রশংসা আল্লাহ তাআলার যিনি সকল সৃষ্টি জগতের পালনকর্তা';

  void _shareText(BuildContext context) {
    final RenderBox box = context.findRenderObject() as RenderBox;
    Share.share(textToShare,
        subject: 'Share Text',
        sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 135,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.green),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: IconButton(
                onPressed: (){},
                icon: Icon(
                  Icons.play_arrow,
                  color: MyAppTheme.backgroundColor,
                )),
          ),
          Expanded(
            child: IconButton(
                onPressed: () => _copyToClipboard(context),
                icon: Icon(
                  Icons.copy,
                  color: MyAppTheme.backgroundColor,
                )),
          ),
          Expanded(
              child: IconButton(
                  onPressed: () => _shareText(context),
                  icon: Icon(
                    Icons.share,
                    color: MyAppTheme.backgroundColor,
                  ))),
        ],
      ),
    );
  }
}

class Suraah extends StatelessWidget {
  const Suraah({
    super.key,
    required this.title,
    required this.imagePath,
  });
  final String title, imagePath;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            SvgPicture.asset(
              imagePath,
              color: Colors.black.withOpacity(0.5),
            ),
            SizedBox(
              height: 36,
              width: 36,
              child: Center(
                child: Text(
                  title,
                  style: TextStyle(fontSize: 19),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}