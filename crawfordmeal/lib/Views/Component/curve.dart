import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint_0 = new Paint()
      ..color = Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;


    Path path_0 = Path();
    path_0.moveTo(0,0);
    path_0.lineTo(size.width,0);
    path_0.lineTo(size.width,size.height*0.9000000);
    path_0.quadraticBezierTo(size.width*1.0006250,size.height*1.0010000,size.width*0.9375000,size.height);
    path_0.quadraticBezierTo(size.width*0.8593750,size.height,size.width*0.6250000,size.height);
    path_0.quadraticBezierTo(size.width*0.6062500,size.height*0.9870000,size.width*0.6000000,size.height*0.9400000);
    path_0.cubicTo(size.width*0.6037500,size.height*0.8910000,size.width*0.6250000,size.height*0.8010000,size.width*0.5000000,size.height*0.7800000);
    path_0.cubicTo(size.width*0.3768750,size.height*0.8210000,size.width*0.4343750,size.height*0.9000000,size.width*0.4125000,size.height*0.9400000);
    path_0.quadraticBezierTo(size.width*0.3993750,size.height*0.9790000,size.width*0.3750000,size.height);
    path_0.quadraticBezierTo(size.width*0.1406250,size.height,size.width*0.0625000,size.height);
    path_0.quadraticBezierTo(size.width*-0.0006250,size.height*1.0010000,0,size.height*0.9000000);
    path_0.lineTo(0,0);
    path_0.close();

    canvas.drawPath(path_0, paint_0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}
