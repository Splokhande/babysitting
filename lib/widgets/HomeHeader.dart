import 'package:babysitting/constants.dart';
import 'package:babysitting/widgets/nexaText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.1.sh,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 0.08.sw,
            child: Image.asset("assets/home/76@3x.png",),
          ),
          SizedBox(width: 0.025.sw,),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              AlegreyaText(
                text: "Welcome",
                textColor: Constants.headerColor,
                fontSize: 15.sp,
                fontWeight: FontWeight.bold,
              ),
              AlegreyaText(
                text: "Emily Cyrus",
                textColor: Constants.buttonColor,
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              )
            ],
          )
        ],
      ),
    );
  }
}
