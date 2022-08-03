import 'dart:io';

import 'package:device_info/device_info.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DeviceInfo extends StatefulWidget {
   DeviceInfo
  ({
    Key? key,
    required this.size,
  }) : super(key: key);
  
  final Size size;

  @override
  State<DeviceInfo> createState() => _DeviceInfoState();
}

class _DeviceInfoState extends State<DeviceInfo> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  String deviceName ='';
  String deviceVersion ='';
  String identifier= '';

  Future<void>_deviceDetails() async{
    final DeviceInfoPlugin deviceInfoPlugin = new DeviceInfoPlugin();
    try {
      if (Platform.isAndroid) {
        var build = await deviceInfoPlugin.androidInfo;
        setState(() {
          deviceName = build.model;
          deviceVersion = build.version.toString();
          identifier = build.androidId;
        });
        //UUID for Android
      } else if (Platform.isIOS) {
        var data = await deviceInfoPlugin.iosInfo;
        setState(() {
          deviceName = data.name;
          deviceVersion = data.systemVersion;
          identifier = data.identifierForVendor;
        });//UUID for iOS
      }
    } on PlatformException {
      print('Failed to get platform version');
    }

  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              padding: EdgeInsets.all(14),
              color: Colors.cyan[50],
              onPressed: (){
                _deviceDetails();
              },
              child: Text("Device Details",
                style: TextStyle(color: Colors.black),),
            ),
            deviceVersion.isNotEmpty && deviceName.isNotEmpty
                && identifier.isNotEmpty?
            Column(
              children: [
                SizedBox(height: 30,),
                Text("Device Name:- "+deviceName,style: TextStyle
                  (color: Colors.red,
                    fontWeight: FontWeight.bold)),
                SizedBox(height: 30,),
                Text("Device Version:- "+deviceVersion,style:    TextStyle
                  (color: Colors.red,
                    fontWeight: FontWeight.bold)),
                SizedBox(height: 30,),
                Text("Device Identifier:- "+identifier,style: TextStyle
                  (color: Colors.red,
                    fontWeight: FontWeight.bold)),
                SizedBox(height: 30,),
              ],
            ): Container(),
          ],
        ),
      );
  }

  
  // @override
  // Widget build(BuildContext context) {
  //   return Material(
  //     elevation: 0.7,
  //     child: Container
  //     (
  //       padding: EdgeInsets.symmetric(
  //         horizontal: widget.size.width * 0.05,
  //         vertical: widget.size.height * 0.07,
  //       ),
  //       decoration: BoxDecoration
  //       (
  //         borderRadius: BorderRadius.all(Radius.circular(20))
  //       ),
  //       child: Column(
  //         children: [
            
  //           Center(
  //             child: Icon
  //             (
  //               Icons.add
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }
}