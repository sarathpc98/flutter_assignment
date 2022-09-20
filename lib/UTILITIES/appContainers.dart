import 'package:flutter/material.dart';

class AppContainers extends StatefulWidget {
  final double? height;
  final String? text;
  final double? width;
  final Color? color;
  final Color? bordercolor;
  final double? borderradius;

  const AppContainers(
      {Key? key,
      this.height,
      this.width,
      this.text,
      this.color,
      this.bordercolor,
      this.borderradius})
      : super(key: key);

  @override
  State<AppContainers> createState() => _AppContainersState();
}

class _AppContainersState extends State<AppContainers> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
        color: widget.color,
      ),
      child: Center(
        child: Text(
          widget.text.toString(),
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
