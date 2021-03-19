import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PinCard extends StatelessWidget {
  final Widget widget;
  final double height;
  PinCard({this.widget, this.height});
  @override
  Widget build(BuildContext context) {
    return  Container(
      alignment: Alignment.center,
      height: height??0.5.sh,
      width: 1.sw,
      child: Stack(children: [

        widget,
        Positioned(
            top: 0.01.sh,
            left: 0.1.sw,
            child: Image.asset("assets/signin/Group 3746@3x.png",height: 0.1.sh,)),

      ],),
    );
  }
}
