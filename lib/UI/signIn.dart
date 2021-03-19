import 'package:babysitting/UI/signUp.dart';
import 'package:babysitting/constants.dart';
import 'package:babysitting/widgets/loginHeader.dart';
import 'package:babysitting/widgets/nexaText.dart';
import 'package:babysitting/widgets/pinCard.dart';
import 'package:babysitting/widgets/textformfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController _mobileNo = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        LoginHeader(
          heading: "Sign in to continue",
            widget:
        // Container(
        //   alignment: Alignment.center,
        //   height: 0.5.sh,
        //   width: 1.sw,
        //   child: Stack(children: [
        //
        //     Positioned(
        //       top: 0.035.sh,
        //       left:0.15.sw,
        //       child: Column(
        //         children: [
        //           Card(
        //             child: Container(
        //               height: 0.3.sh,
        //               width: 0.7.sw,
        //               child: Padding(
        //                 padding: const EdgeInsets.symmetric(horizontal:16.0),
        //                 child: Column(
        //                   mainAxisAlignment: MainAxisAlignment.center,
        //                   crossAxisAlignment: CrossAxisAlignment.center,
        //                   mainAxisSize: MainAxisSize.min,
        //                   children: [
        //                     CustomTextField(
        //                       icon: Image.asset("assets/signin/telephone.png",height: 10,),
        //                       controller:_mobileNo ,
        //                       hint: "Mobile Number",
        //                     ),
        //                     SizedBox(
        //                       height: 0.05.sh,
        //                     ),
        //                     GestureDetector(
        //                       onTap: (){
        //
        //                       },
        //                       child: Container(
        //                         width: 0.4.sw,
        //                         // height: 0.035.sh,
        //                         decoration: BoxDecoration(
        //                             borderRadius: BorderRadius.circular(25),
        //                             color: Constants.buttonColor
        //                         ),
        //                         child: Padding(
        //                           padding: const EdgeInsets.symmetric(vertical:8.0),
        //                           child: Center(child: Text("Verify",style: GoogleFonts.alegreyaSans(fontWeight: FontWeight.bold,color: Colors.white),)),
        //                         ),
        //                       ),
        //                     ),
        //
        //                     SizedBox(
        //                       height: 0.025.sh,
        //                     ),
        //                     GestureDetector(
        //                       onTap: (){
        //                         Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp()));
        //                       },
        //                       child: RichText(
        //                           text: TextSpan(text: "Don't have an Account ? ",
        //                               style: TextStyle(
        //                                   color: Constants.textColor,
        //                                   fontFamily: 'NexaDemo'
        //                               ),
        //                               children: <TextSpan>[
        //                                 TextSpan(text: "Sign Up.",style: TextStyle(
        //                                     fontFamily: 'NexaDemo',
        //                                     fontWeight: FontWeight.bold))
        //                               ]
        //                           )),
        //                     )
        //                   ],
        //                 ),
        //               ),
        //             ),
        //           ),
        //           SizedBox(
        //             height: 0.05.sh,
        //           ),
        //           Container(
        //             child: NexaText(text: "Skip",fontWeight: FontWeight.w700,fontSize: 18.sp,),
        //           ),
        //         ],
        //       ),
        //     ),
        //     Positioned(
        //         top: 0.01.sh,
        //         left: 0.12.sw,
        //         child: Image.asset("assets/signin/Group 3746@3x.png",height: 0.1.sh,)),
        //
        //   ],),
        // ),
        PinCard(widget: Positioned(
          top: 0.035.sh,
          left:0.15.sw,
          child: Column(
            children: [
              Card(
                child: Container(
                  height: 0.3.sh,
                  width: 0.7.sw,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal:16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomTextField(
                          icon: Image.asset("assets/signin/telephone.png",height: 10,),
                          controller:_mobileNo ,
                          hint: "Mobile Number",
                        ),
                        SizedBox(
                          height: 0.05.sh,
                        ),
                        GestureDetector(
                          onTap: (){

                          },
                          child: Container(
                            width: 0.4.sw,
                            // height: 0.035.sh,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Constants.buttonColor
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical:8.0),
                              child: Center(child: Text("Verify",style: GoogleFonts.alegreyaSans(fontWeight: FontWeight.bold,color: Colors.white),)),
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 0.025.sh,
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp()));
                          },
                          child: RichText(
                              text: TextSpan(text: "Don't have an Account ? ",
                                  style: TextStyle(
                                      color: Constants.textColor,
                                      fontFamily: 'NexaDemo'
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(text: "Sign Up.",style: TextStyle(
                                        fontFamily: 'NexaDemo',
                                        fontWeight: FontWeight.bold))
                                  ]
                              )),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 0.05.sh,
              ),
              Container(
                child: NexaText(text: "Skip",fontWeight: FontWeight.w700,fontSize: 18.sp,),
              ),
            ],
          ),
        ),)
        )
      // Stack(
      //  children: [
      //    SvgPicture.asset(
      //      'assets/signin/Mask Group 2.svg',
      //      color: Theme.of(context).primaryColor.withOpacity(0.3),
      //      alignment: Alignment.center,
      //      width: 1.sw,
      //      height: 1.sh,
      //    ),
      //    Positioned(
      //      top: 0.15.sh,
      //      left: 0.1.sw,
      //      right: 0.1.sw,
      //      child: Container(
      //        child: Column(
      //          children: <Widget>[
      //            SvgPicture.asset(
      //              'assets/signin/Group 551.svg',
      //
      //              alignment: Alignment.center,
      //              width: 0.2.sw,
      //              height: 0.2.sh,
      //            ),
      //          ],
      //        ),
      //      ),
      //    ),
      //  ],
      // ),

    );
  }
}
