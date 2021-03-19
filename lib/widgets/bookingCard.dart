import 'package:babysitting/constants.dart';
import 'package:babysitting/models/User.dart';
import 'package:babysitting/widgets/nexaText.dart';
import 'package:babysitting/widgets/roundedCornerButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class MyBookingCard extends StatelessWidget {
  final UserBooking userBooking;
  MyBookingCard({this.userBooking});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: Colors.white,
      child: Container(
        height: 0.2.sh,
        child: Padding(
          padding:const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AlegreyaText(
                    text: userBooking.packageName,textColor: Constants.buttonColor,
                    fontSize: 20.sp,fontWeight: FontWeight.bold,
                  ),
                  Container(
                    width: 0.2.sw,
                    decoration: BoxDecoration(
                      color: Constants.buttonColor,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: AlegreyaText(
                          text: "Start",
                          textColor: Colors.white,
                          fontSize: 12.sp,fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 0.02.sh,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: AlegreyaText(text: "From",fontWeight: FontWeight.bold,fontSize: 15.sp,textColor: Constants.hintColor,)),
                  Expanded(child: AlegreyaText(text: "To",fontWeight: FontWeight.bold,fontSize: 15.sp,textColor: Constants.hintColor,))

                ],
              ),
              SizedBox(height: 0.01.sh,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/home/calendar (4)-1@3x.png",height: 0.02.sh,),
                      SizedBox(width: 0.03.sw,),
                      AlegreyaText(text:userBooking.fromDate,fontWeight: FontWeight.bold,fontSize: 18.sp,textColor: Constants.headerColor,)

                    ],
                  ),
                  ),
                  Expanded(child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/home/calendar (4)-1@3x.png",height: 0.02.sh,),
                      SizedBox(width: 0.03.sw,),
                      AlegreyaText(text: userBooking.toDate,fontWeight: FontWeight.bold,fontSize: 18.sp,textColor: Constants.headerColor,)

                    ],
                  ),
                  )

                ],
              ),
              SizedBox(height: 0.01.sh,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset("assets/home/clock (1)-1@3x.png",height: 0.02.sh,),
                        SizedBox(width: 0.03.sw,),
                        AlegreyaText(text: userBooking.fromTime,fontWeight: FontWeight.bold,fontSize: 18.sp,textColor: Constants.headerColor,)

                      ],
                    ),
                  ),
                  Expanded(
                    child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset("assets/home/clock (1)-1@3x.png",height: 0.02.sh,),
                        SizedBox(width: 0.03.sw,),
                        AlegreyaText(text: userBooking.toDate,fontWeight: FontWeight.bold,fontSize: 18.sp,textColor: Constants.headerColor,)

                      ],
                    ),
                  )

                ],
              ),
              SizedBox(height: 0.01.sh,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: RoundedCornerButton(
                      onTap: (){},
                      text: "Rate Us",
                      backgroundColor: Constants.textColor,
                      assetName: "assets/home/star.png",
                    ),

                  ),
                  SizedBox(width: 0.01.sw,),
                  Expanded(
                    child: RoundedCornerButton(
                      onTap: (){},
                      text: "Geolocation",
                      iconWidth: 0.025.sw,
                      backgroundColor: Constants.textColor,
                      assetName: "assets/home/pin.png",
                    ),
                  ),
                  SizedBox(width: 0.01.sw,),
                  Expanded(
                    child: RoundedCornerButton(
                      onTap: (){},
                      text: "Survillence",
                      backgroundColor: Constants.textColor,
                      assetName: "assets/home/radio.png",
                    ),
                  ),
                  SizedBox(width: 0.01.sw,),



                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
