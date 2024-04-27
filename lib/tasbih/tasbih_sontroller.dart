import 'package:get/get.dart';

class TasbeehController extends GetxController{
  int _counter = 0;
  int _trackCounter = 0;
  int _currentIndex = -1;
  final List<int> _tracker = [7, 33, 99];

  int get counter => _counter;
  int get trackCounter => _trackCounter;
  int get currentIndex => _currentIndex;
  List<int> get tracker => _tracker;

  void updateCounter(){
    _counter ++;

    if(_counter == 9){
      _trackCounter ++;
      _counter = 0;
    }

    if(_counter == 1 && _currentIndex == -1){
      _currentIndex = 0;
    }

    if(_trackCounter == _tracker[_currentIndex]){
      _currentIndex ++;
    }

    print('===> $_currentIndex');


    update();
  }

  void reset(){
    _counter = 0;
    _trackCounter = 0;
    _currentIndex = -1;
    update();
  }
}