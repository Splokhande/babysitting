import 'package:babysitting/constants.dart';
import 'package:babysitting/widgets/nexaText.dart';
import 'package:babysitting/widgets/roundedCornerButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PackageBox extends StatelessWidget {
  final String assetName;
  final String packageDays;
  final String packagePrice;
  final String description;
  final Color backgroundColor;
  final Color roundedCornerColor;


  PackageBox({this.roundedCornerColor,this.assetName,this.packageDays, this.packagePrice, this.description, this.backgroundColor});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.18.sh,
      decoration: BoxDecoration(
        color: backgroundColor.withOpacity(0.5),
        borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(assetName,width: 0.06.sw,fit: BoxFit.fill,),
                RoundedCornerButton(
                  backgroundColor: roundedCornerColor??Constants.buttonColor,
                  text: "Book Now",
                )

              ],
            ),
            SizedBox(height: 0.01.sh,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AlegreyaText(text: packageDays,fontSize: 15.sp,fontWeight: FontWeight.bold,textColor: Constants.textColor,),
                AlegreyaText(text: packagePrice,fontSize: 15.sp,fontWeight: FontWeight.bold,textColor: Constants.textColor,),
              ],
            ),
            SizedBox(height: 0.01.sh,),
            Expanded(child: Text(description,style: TextStyle(color: Constants.descriptionColor,fontSize: 10.sp),))
          ],
        ),
      ),
    );
  }
}
