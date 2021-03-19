
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class User{
  String name;
  String profilePhoto;
  User({this.name, this.profilePhoto});

  User.fromJson(Map<String, dynamic> data){
    name = data["name"];
    profilePhoto = data["photo"];
  }
}

class UserBooking{
  String bookingId;
  String packageName;
  String fromDate;
  String toDate;
  String fromTime;
  String toTime;
  UserBooking(
      {this.bookingId,
      this.packageName,
      this.fromDate,
      this.toDate,
      this.fromTime,
      this.toTime});

  UserBooking.fromJson(Map<String, dynamic> data){
    bookingId = data["bookingId"];
     packageName= data["packageName"];
     fromDate= data["fromDate"];
     toDate= data["toDate"];
     fromTime= data["fromTime"];
     toTime= data["toTime"];
  }

}

List<UserBooking>fetchUserBooking(){
 List<UserBooking> userBookingList = [
   UserBooking.fromJson({
      "bookingId": "1",
      "packageName": "One Day Package",
      "fromDate": "20.03.2021",
      "toDate": "21.03.2021",
      "fromTime": "11 pm",
      "toTime": "7 am"
    }),
   UserBooking.fromJson({
     "bookingId": "2",
     "packageName": "Weekly Package",
     "fromDate": "23.03.2021",
     "toDate": "29.03.2021",
     "fromTime": "8 am",
     "toTime": "8 pm"
    }),
   UserBooking.fromJson({
     "bookingId": "3",
     "packageName": "Monthly Package",
     "fromDate": "01.04.2021",
     "toDate": "30.04.2021",
     "fromTime": "2 pm",
     "toTime": "6 pm"
    }),
 ];
return userBookingList;
}