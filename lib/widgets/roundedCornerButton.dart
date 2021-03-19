
import 'package:babysitting/constants.dart';
import 'package:babysitting/widgets/nexaText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoundedCornerButton extends StatelessWidget {

  final String assetName;
  final String text;
  final Color backgroundColor;
  final Function onTap;
  final double iconWidth;


  RoundedCornerButton({this.assetName,this.iconWidth, this.text, this.backgroundColor, this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 0.2.sw,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(25),
        ),
        child: assetName == null ? Center(
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: AlegreyaText(
              text: text,
              textColor: Colors.white,
              fontSize: 12.sp,fontWeight: FontWeight.w700,
            ),
          ),
        ) : Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(assetName,width: iconWidth??0.035.sw,fit: BoxFit.fill,),
                SizedBox(width: 0.01.sw,),
                AlegreyaText(
                  text: text,
                  textColor: Colors.white,
                  fontSize: 10.sp,fontWeight: FontWeight.w700,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
