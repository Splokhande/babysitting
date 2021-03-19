

import 'package:babysitting/constants.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final Widget icon;
  final String hint;
  final TextEditingController controller;
  final Function validate;
  final Function onChanged;
  final bool isObscure;
  final int maxLength;
  final TextInputType inputType;
  CustomTextField({this.icon,this.inputType, this.validate, this.hint,
    this.controller, this.isObscure, this.maxLength, this.onChanged});
  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      decoration: InputDecoration(
          border: InputBorder.none,
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color:Constants.lightPink)),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color:Constants.lightPink),
          ),
          errorBorder: UnderlineInputBorder(
            borderSide: BorderSide(color:Colors.red)),
          focusedErrorBorder: UnderlineInputBorder(
            borderSide: BorderSide(color:Colors.red),
          ),
          counterText: "",
          hintText: hint,
          hintStyle: TextStyle(color: Constants.hintColor),
          isDense: true,
          contentPadding: EdgeInsets.all(0.0),
          suffixIcon: icon
      ),
      keyboardType: inputType,
      obscureText: isObscure ?? false,
      textAlignVertical: TextAlignVertical.center,
      controller: controller,
      validator: validate,
      maxLength: maxLength,
      onChanged: onChanged,
      maxLines: 1,
    );
  }
}
