import 'package:babysitting/constants.dart';
import 'package:babysitting/widgets/nexaText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:32.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [


            Row(
              children: [
                SizedBox(width: 0.1.sw,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                      radius: 0.1.sw,
                      child: Image.asset("assets/home/76@3x.png",),
                    ),
                    SizedBox(height: 0.02.sh,),
                    AlegreyaText(
                      text: "Emily Cyrus",
                      textColor: Constants.buttonColor,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 0.05.sh,),

            GestureDetector(
                onTap: (){

                },
                child: AlegreyaText(textColor: Constants.textColor,text:"Home",fontWeight: FontWeight.w800,fontSize: 15.sp ,)),
            SizedBox(height: 0.0125.sh,),
            SizedBox(
              width: 0.4.sw,
              child: Divider(
                thickness: 1,
                color: Constants.hintColor.withOpacity(0.3),
              ),
            ),

            SizedBox(height: 0.0125.sh,),
            AlegreyaText(textColor: Constants.textColor,text:"Book A Nanny",fontWeight: FontWeight.w800,fontSize: 15.sp ,),
            SizedBox(height: 0.0125.sh,),
            SizedBox(
              width: 0.4.sw,
              child: Divider(
                thickness: 1,
                color: Constants.hintColor.withOpacity(0.3),
              ),
            ),

            SizedBox(height: 0.0125.sh,),
            AlegreyaText(textColor: Constants.textColor,text:"How it Works",fontWeight: FontWeight.w800,fontSize: 15.sp ,),
            SizedBox(height: 0.0125.sh,),
            SizedBox(
              width: 0.4.sw,
              child: Divider(
                thickness: 1,
                color: Constants.hintColor.withOpacity(0.3),
              ),
            ),

            SizedBox(height: 0.0125.sh,),
            AlegreyaText(textColor: Constants.textColor,text:"Why Nanny Vanny",fontWeight: FontWeight.w800,fontSize: 15.sp ,),
            SizedBox(height: 0.0125.sh,),
            SizedBox(
              width: 0.4.sw,
              child: Divider(
                thickness: 1,
                color: Constants.hintColor.withOpacity(0.3),
              ),
            ),

            SizedBox(height: 0.0125.sh,),
            AlegreyaText(textColor: Constants.textColor,text:"My Bookings",fontWeight: FontWeight.w800,fontSize: 15.sp ,),
            SizedBox(height: 0.0125.sh,),
            SizedBox(
              width: 0.4.sw,
              child: Divider(
                thickness: 1,
                color: Constants.hintColor.withOpacity(0.3),
              ),
            ),

            SizedBox(height: 0.0125.sh,),
            AlegreyaText(textColor: Constants.textColor,text:"My Profile",fontWeight: FontWeight.w800,fontSize: 15.sp ,),
            SizedBox(height: 0.0125.sh,),
            SizedBox(
              width: 0.4.sw,
              child: Divider(
                thickness: 1,
                color: Constants.hintColor.withOpacity(0.3),
              ),
            ),

            SizedBox(height: 0.0125.sh,),
            AlegreyaText(textColor: Constants.textColor,text:"Support",fontWeight: FontWeight.w800,fontSize: 15.sp ,),

          ],
        ),
      ),
    );
  }
}