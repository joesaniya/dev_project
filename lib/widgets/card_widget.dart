import 'package:flutter/material.dart';

class CardDevice extends StatelessWidget {
   CardDevice
  ({
    Key? key,
    required this.size,
  }) : super(key: key);
  
  final Size size;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 0.7,
      child: Container
      (
        padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.05,
          vertical: size.height * 0.07,
        ),
        decoration: BoxDecoration
        (
          borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        child: Center(
          child: Icon
          (
            Icons.add
          ),
        ),
      ),
    );
  }
}