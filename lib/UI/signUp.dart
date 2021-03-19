
import 'package:babysitting/UI/mainScreen.dart';
import 'package:babysitting/widgets/nexaText.dart';
import 'package:babysitting/widgets/textformfield.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:babysitting/widgets/loginHeader.dart';
import 'package:babysitting/widgets/pinCard.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String relationWithChild ;
  TextEditingController _mobileNo = TextEditingController();
  TextEditingController _parentName = TextEditingController();
  TextEditingController _emailid = TextEditingController();
  TextEditingController _city = TextEditingController();
  int _radioValue1 = -1;
  int correctScore = 0;


  void _handleRadioValueChange1(int value) {
    setState(() {
      _radioValue1 = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginHeader(
        heading: "Sign up to continue",
        widget: PinCard(
          height: 0.7.sh,
          widget: Positioned(
            top: 0.035.sh,
            left:0.15.sw,
            child: Column(
              children: [
                Card(
                  child: Container(
                    height: 0.6.sh,
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
                            controller:_parentName ,
                            hint: "Parent Name",
                          ),
                          SizedBox(
                            height: 0.02.sh,
                          ),
                          CustomTextField(
                            icon: Image.asset("assets/signin/telephone.png",height: 10,),
                            controller:_mobileNo ,
                            hint: "Mobile Number",
                          ),
                          SizedBox(
                            height: 0.02.sh,
                          ),
                          CustomTextField(
                            icon: Image.asset("assets/signin/telephone.png",height: 10,),
                            controller:_emailid ,
                            hint: "Email Id",
                          ),
                          SizedBox(
                            height: 0.02.sh,
                          ),
                          CustomTextField(
                            icon: Image.asset("assets/signin/telephone.png",height: 10,),
                            controller:_city ,
                            hint: "City",
                          ),
                          SizedBox(
                            height: 0.02.sh,
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Number of Children",
                                textAlign: TextAlign.start,

                                style: GoogleFonts.alegreyaSans(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15.sp,
                                  color: Constants.buttonColor
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                               Radio(
                                value: 0,
                                groupValue: _radioValue1,
                                onChanged: _handleRadioValueChange1,
                              ),
                               Text(
                                '1(One)',
                                style: GoogleFonts.alegreyaSans(
                                    fontWeight: FontWeight.w500,
                                  fontSize: 12.sp,
                                  color: _radioValue1 == 0 ? Constants.buttonColor:Color(0xff5C5C5C),
                                ),
                              ),
                               Radio(
                                value: 1,
                                groupValue: _radioValue1,
                                onChanged: _handleRadioValueChange1,
                              ),
                               Text(
                                '2(Two)',
                                style: GoogleFonts.alegreyaSans(
                                      fontWeight: FontWeight.w500,
                                    fontSize: 12.sp,
                                  color: _radioValue1 == 1 ? Constants.buttonColor:Color(0xff5C5C5C),
                                  ),
                              ),
                               Radio(
                                value: 2,
                                groupValue: _radioValue1,
                                onChanged: _handleRadioValueChange1,
                              ),
                               Text(
                                'More',
                                style: GoogleFonts.alegreyaSans(
                                    fontWeight: FontWeight.w500,
                                  fontSize: 12.sp,
                                  color: _radioValue1 == 2 ? Constants.buttonColor:Color(0xff5C5C5C),
                                ),
                              ),
                            ],
                          ),


                          DropdownButtonFormField(
                            items:
                          <String>['Guardian', 'Parent']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          hint: Text("Relation With Child",style: TextStyle(color: Constants.hintColor,fontSize: 12.sp),),
                          value:relationWithChild ,
                            onChanged: (value){
                            relationWithChild = value;
                            },
                          ),
                          SizedBox(
                            height: 0.02.sh,
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => MainScreen()));
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
                                text: TextSpan(text: "Already have an Account ? ",
                                    style: TextStyle(
                                        color: Constants.textColor,
                                        fontFamily: 'NexaDemo'
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(text: "Sign In.",style: TextStyle(
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
                  height: 0.02.sh,
                ),
                Container(
                  child: NexaText(text: "Skip",fontWeight: FontWeight.w700,fontSize: 18.sp,),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
