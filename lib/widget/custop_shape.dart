import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

class Customshape extends CustomClipper<Path> {
  Path getClip(Size size) {
    double height = size.height;
    double widht = size.width;
    var path = Path();
    path.lineTo(0, height - 5);
    path.quadraticBezierTo(widht / 10, height, widht, height - 5);
    path.lineTo(widht, 0);
    path.close();
    return path;
  }

  bool shouldRectclip(covariant CustomClipper) {
    return true;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw true;
  }
}
