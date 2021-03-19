

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NexaText extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;
  final double fontSize;
  NexaText({this.text, this.fontSize, this.fontWeight});
  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(fontFamily: 'NexaDemo',
        fontWeight: fontWeight,
        fontSize: fontSize),);
  }
}

class AlegreyaText extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;
  final double fontSize;
  final Color textColor;
  AlegreyaText({this.text, this.fontSize, this.fontWeight, this.textColor});
  @override
  Widget build(BuildContext context) {
    return Text(text,style: GoogleFonts.alegreyaSans(
        fontWeight: fontWeight,
        color: textColor,
        fontSize: fontSize),);
  }
}


