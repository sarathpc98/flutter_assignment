import 'package:flutter/material.dart';

class AppContainers1 extends StatefulWidget {
  final double? height;
  //final String? text;
  final double? width;
  final Color? color;
  final Color? bordercolor;
  var borderradius;
  List<Widget>? childrens = [];

  AppContainers1(
      {Key? key,
      this.height = 150,
      this.childrens,
      this.width = 180,
      //this.text,
      this.color,
      this.bordercolor = Colors.redAccent,
      this.borderradius = 10.0})
      : super(key: key);

  @override
  State<AppContainers1> createState() => _AppContainers1State();
}

class _AppContainers1State extends State<AppContainers1> {
  List<Widget>? _children = [];
  @override
  initState() {
    _children = widget.childrens;
    super.initState();

    print(_children);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(widget.borderradius),
        border: Border.all(color: Colors.redAccent),
        color: widget.color,
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        _children![0],
        SizedBox(height: 10,),
        _children![1],
            SizedBox(height: 10,),
        _children![2],
      ]),
    );
  }
}
