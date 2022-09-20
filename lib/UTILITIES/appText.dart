import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String text;
  final double? textsize;
  final Color? textcolor;
  final FontWeight? fontweight;

  const AppText(
      {Key? key,
      required this.text,
      this.textsize,
      this.textcolor = Colors.black,
      this.fontweight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: textcolor,
        fontSize: textsize,
      ),
    );
  }
}
