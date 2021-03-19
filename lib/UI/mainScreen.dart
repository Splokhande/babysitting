
import 'dart:io';

import 'package:babysitting/UI/Homepage.dart';
import 'package:babysitting/UI/dashboard/menuDashboard.dart';
import 'package:babysitting/constants.dart';
import 'package:babysitting/models/User.dart';
import 'package:babysitting/models/packages.dart';
import 'package:babysitting/widgets/HomeHeader.dart';
import 'package:babysitting/widgets/bookingCard.dart';
import 'package:babysitting/widgets/bottomNavigationDot.dart';
import 'package:babysitting/widgets/nexaText.dart';
import 'package:babysitting/widgets/packageBox.dart';
import 'package:babysitting/widgets/roundedCornerButton.dart';
import 'package:bottom_personalized_dot_bar/bottom_personalized_dot_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';


class MainScreen extends StatefulWidget{
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>  with SingleTickerProviderStateMixin{
  bool isCollapsed = true;
  String currentPage = '0';
  ZoomDrawerController zoomDrawerController = ZoomDrawerController();
  final Duration duration = const Duration(milliseconds: 600);
  AnimationController _animationController;
  Animation<double> _scaleAnimation;
  List<UserBooking> userBookingList = [];
  Widget screen = HomePage();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(vsync: this,duration: duration);
    _scaleAnimation = Tween<double>(begin: 1,end: 0.6).animate(_animationController);
  }

  Future<bool> _willPopCallback() async {
    // await showDialog or Show add banners or whatever
    // then
    if(!isCollapsed){

        isCollapsed =  !isCollapsed;

    }
    return true; // return true if the route to be popped
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            sideMenu(),
           dashboard(),
          ],
        ),
      ),
    );
  }

Widget sideMenu(){
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
                  setState(() {
                    isCollapsed = !isCollapsed;
                  });
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
Widget  dashboard(){
    return AnimatedPositioned(
      right: isCollapsed?0:-0.4*1.sw,
      left: isCollapsed?0:0.6*1.sw,
      bottom: isCollapsed?0:0.1*1.sh,
      top: isCollapsed?0:0.1*1.sh,
      duration: duration,
      child: ScaleTransition(
         scale:_scaleAnimation ,
        child: AnimatedContainer(
          // borderOnForeground: true,
          // animationDuration: duration,
          // elevation: 10,
          // borderRadius: BorderRadius.all(Radius.circular(20)),
          duration: duration,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(40)),
          ),

          child: Scaffold(
            body: SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
                height: 0.88.sh,
                width: 1.sw,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 0.05.sw,
                      height: 0.9.sh,
                    ),
                    Expanded(
                      child: Container(
                        width: 0.9.sw,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            isCollapsed ? Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isCollapsed = !isCollapsed;
                                    });
                                  },

                                  child: Container(
                                    child: Image.asset("assets/home/Group 3617@3x.png",width: 0.1.sw,fit: BoxFit.fill,),
                                    // icon: Icon(Icons.filter),
                                    //
                                    // tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                                  ),
                                ),
                              ],
                            ): SizedBox(height: 0.05.sh,),

                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,

                                children: [
                                  HomeHeader(),
                                  Expanded(
                                    child: ListView(
                                      scrollDirection: Axis.vertical,
                                      shrinkWrap: true,
                                      physics: BouncingScrollPhysics(),
                                      children: [

                                        Container(
                                          height: 0.21.sh,
                                          decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            borderRadius: BorderRadius.circular(15),
                                          ),
                                          child: Stack(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(top:0.02.sh, right:0.06.sw,bottom:0.016.sh ),
                                                child: Container(
                                                  alignment: Alignment.bottomCenter,
                                                  decoration: BoxDecoration(
                                                    color: Constants.lightPink,
                                                    borderRadius: BorderRadius.circular(15),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                  left: 0.08.sw,
                                                  top: 0.08.sh,
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      SizedBox(
                                                          width: 0.5.sw,
                                                          child: AlegreyaText(
                                                            text:"Nanny And Babysitting Services",
                                                            textColor: Constants.textColor.withOpacity(0.8),
                                                            fontWeight: FontWeight.bold,fontSize: 18.sp,)
                                                      ),
                                                      SizedBox(
                                                        height: 0.01.sh,
                                                      ),
                                                      Container(
                                                        width: 0.25.sw,
                                                        decoration: BoxDecoration(
                                                          color: Constants.textColor,
                                                          borderRadius: BorderRadius.circular(15),
                                                        ),
                                                        child: Center(
                                                          child: Padding(
                                                            padding: const EdgeInsets.all(4.0),
                                                            child: AlegreyaText(
                                                              text: "Book Now",
                                                              textColor: Colors.white,
                                                              fontSize: 12.sp,fontWeight: FontWeight.w700,
                                                            ),
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  )),
                                              Positioned(
                                                  right: 0,
                                                  top: -5,
                                                  child: Image.asset("assets/home/Group 3747@3x.png",width: 0.71.sw,)),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 0.02.sh,),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            AlegreyaText(text: "Your Current Booking",textColor: Constants.textColor,fontWeight: FontWeight.bold,fontSize: 20.sp,),
                                          ],
                                        ),
                                        SizedBox(height: 0.008.sh,),

                                        SizedBox(
                                          height: 0.25.sh,
                                          width: 1.sw,
                                          child: ListView.separated(
                                              shrinkWrap: true,
                                              itemCount: fetchUserBooking().length,
                                              scrollDirection: Axis.horizontal,
                                              itemBuilder: (_,i){
                                                return SizedBox(
                                                    width: 0.8.sw,
                                                    height: 0.2.sh,
                                                    child: MyBookingCard(userBooking: fetchUserBooking()[i],));

                                              }, separatorBuilder: (BuildContext context, int index) {
                                                return SizedBox(width: 0.02.sw,);
                                          },),
                                        ),
                                        SizedBox(height: 0.02.sh,),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            AlegreyaText(fontSize: 20.sp,fontWeight: FontWeight.bold,text: "Packages",textColor: Constants.textColor,),
                                          ],
                                        ),
                                        SizedBox(height: 0.02.sh,),
                                        ListView.separated(
                                          scrollDirection: Axis.vertical,
                                          shrinkWrap: true,
                                          physics: NeverScrollableScrollPhysics(),
                                          itemCount: fetchPackages().length,
                                          itemBuilder: (_,i){
                                            return PackageBox(
                                              roundedCornerColor: i%2==0?Constants.buttonColor:Constants.packageBackgroundColor,
                                              backgroundColor: i%2==0?Constants.buttonColor:Constants.packageBackgroundColor,
                                              assetName: i%2==0?"assets/home/Group 3732@3x.png":"assets/home/Group 3748@3x.png",
                                              packagePrice: fetchPackages()[i].cost,
                                              packageDays: fetchPackages()[i].name,
                                              description: fetchPackages()[i].description,

                                            );
                                          }, separatorBuilder: (BuildContext context, int index) {
                                          return SizedBox(height: 0.02.sh,);
                                        },),
                                        // PackageBox(
                                        //   assetName: "assets/home/Group 3732@3x.png",
                                        //   backgroundColor: Constants.buttonColor,
                                        //
                                        //   packageDays: "One Day Package",
                                        //   packagePrice: "\u20B9 2799",
                                        //   description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd",
                                        // ),
                                        // SizedBox(height: 0.02.sh,),
                                        // PackageBox(
                                        //   assetName: "assets/home/Group 3748@3x.png",
                                        //   backgroundColor: Constants.packageBackgroundColor,
                                        //   roundedCornerColor: Constants.packageBackgroundColor,
                                        //   packageDays: "Three Day Package",
                                        //   packagePrice: "\u20B9 7497",
                                        //   description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd",
                                        // ),
                                        // SizedBox(height: 0.02.sh,),
                                        // PackageBox(
                                        //   assetName: "assets/home/Group 3732@3x.png",
                                        //   backgroundColor: Constants.buttonColor,
                                        //   packageDays: "Five Day Package",
                                        //   packagePrice: "\u20B9 11495",
                                        //   description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd",
                                        // ),
                                        // SizedBox(height: 0.02.sh,),
                                        // PackageBox(
                                        //   assetName: "assets/home/Group 3748@3x.png",
                                        //   backgroundColor: Constants.packageBackgroundColor,
                                        //   roundedCornerColor: Constants.packageBackgroundColor,
                                        //   packageDays: "Weekend Package",
                                        //   packagePrice: "\u20B9 7497",
                                        //   description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd",
                                        // ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 0.05.sw,
                      height: 1.sh,
                    ),
                  ],
                ),
              ),
            ),
            bottomNavigationBar:Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: isCollapsed?BorderRadius.only(bottomLeft: Radius.circular(40)):BorderRadius.zero,
              ),
              child: new BottomNavigationDot(
                paddingBottomCircle: 0,
                color: Colors.black.withOpacity(0.5),
                backgroundColor: Colors.white,
                activeColor: Constants.buttonColor,
                items: [
                  new BottomNavigationDotItem(
                      icon: "assets/home/svg/home-run (2).svg",
                      title: "Home",
                      onTap: () {
                        changePage("flutter");
                      }),
                  new BottomNavigationDotItem(
                      icon: "assets/home/svg/sale (1).svg",
                      title: "Packages",
                      onTap: () {
                        changePage("java");
                      }),
                  new BottomNavigationDotItem(
                      icon: "assets/home/svg/clock (1).svg",
                      title: "Bookings",
                      onTap: () {
                        changePage("php");
                      }),
                  new BottomNavigationDotItem(
                      icon: "assets/home/svg/user (7).svg",
                      title: "Profile",
                      onTap: () {
                        changePage("Profile");
                      }),
                ],
                milliseconds: 400,
              ),
            ),
          ),
        ),
      ),
    );
}
  changePage(String pageName) {
    setState(() {
      currentPage = pageName;
    });
  }
}
