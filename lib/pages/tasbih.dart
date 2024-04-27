import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:islam_alo/tasbih/tasbih_sontroller.dart';

class TasbeehScreen extends StatelessWidget {
  const TasbeehScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TasbeehController>(builder: (tasbeehController) {
      return Scaffold(backgroundColor: Colors.grey.shade800,
        body: SafeArea(
            child: Column(children: [
          Container(
            height: 50,
            color: Colors.yellow,
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [

                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: tasbeehController.currentIndex >= 0
                                ? Colors.green
                                : Colors.black38,
                            width: 2,
                          ),
                        ),
                        margin: const EdgeInsets.only(right: 10),
                        child: Container(
                          height: 10,
                          width: 10,
                          margin: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            color: tasbeehController.currentIndex >= 0
                                ? Colors.green
                                : Colors.transparent,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Text(
                          '${tasbeehController.currentIndex == 0 ? tasbeehController.trackCounter : tasbeehController.tracker[0]}'),
                      const SizedBox(width: 20),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: tasbeehController.currentIndex >= 1
                                ? Colors.green
                                : Colors.black38,
                            width: 2,
                          ),
                        ),
                        margin: const EdgeInsets.only(right: 10),
                        child: Container(
                          height: 10,
                          width: 10,
                          margin: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            color: tasbeehController.currentIndex >= 1
                                ? Colors.green
                                : Colors.transparent,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Text(
                          '${tasbeehController.currentIndex == 1 ? tasbeehController.trackCounter : tasbeehController.tracker[1]}'),
                      const SizedBox(width: 20),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: tasbeehController.currentIndex >= 2
                                ? Colors.green
                                : Colors.black38,
                            width: 2,
                          ),
                        ),
                        margin: const EdgeInsets.only(right: 10),
                        child: Container(
                          height: 10,
                          width: 10,
                          margin: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            color: tasbeehController.currentIndex >= 2
                                ? Colors.green
                                : Colors.transparent,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Text(
                          '${tasbeehController.currentIndex == 2 ? tasbeehController.trackCounter : tasbeehController.tracker[2]}'),
                    ],
                  ),
                ),SizedBox(width: 5,),
                Icon(Icons.vibration),
                Expanded(
                  child: IconButton(
                    onPressed: () => tasbeehController.reset(),
                    icon: const Icon(Icons.refresh),
                  ),
                ),
              ],
            ),
          ),
          
          Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(200),
                    bottomRight: Radius.circular(200),
                  ),border: Border(bottom: BorderSide(color: Colors.white))),
              child: Center(
                  child: Text(
                '${tasbeehController.counter}',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 50),
              ))),
          const SizedBox(height: 300),
          ElevatedButton(
            onPressed: () =>
                tasbeehController.trackCounter == tasbeehController.tracker[2]
                    ? tasbeehController.reset()
                    : tasbeehController.updateCounter(),
            child: Image.asset(
              'assets/cat/finger.png',
              height: 70,
            ),
          ),
        ])),
      );
    });
  }
}
