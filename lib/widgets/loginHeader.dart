import 'package:babysitting/UI/signUp.dart';
import 'package:babysitting/constants.dart';
import 'package:babysitting/widgets/nexaText.dart';
import 'package:babysitting/widgets/textformfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


class LoginHeader extends StatelessWidget {
  final Widget widget;
  final String heading;
  LoginHeader({this.widget, this.heading});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
        child: Container(
          height: 1.sh,
          width: 1.sw,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/signin/background.png"),fit: BoxFit.fill)
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 0.03.sh,),
                Image.asset("assets/signin/babysit.png",
                  height: 0.15.sh,
                  width:0.2.sw,
                  fit: BoxFit.fitWidth,
                ),
                SizedBox(height: 0.03.sh,),
                Text(heading,style: GoogleFonts.alegreyaSans(fontWeight: FontWeight.w700,fontSize: 25.sp,color: Constants.textColor),),
                SizedBox(height: 0.01.sh,),
                widget

              ],
            ),
          ),
        ),
      ),

    );
  }
}

