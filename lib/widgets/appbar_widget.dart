import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TopWidgetHomePage extends StatelessWidget {
  TopWidgetHomePage({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.05,
        vertical: size.height * 0.07,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              
              //appbar
              GestureDetector(
                onTap: ()
                {
                  print('drawer open');
                  Scaffold.of(context).openDrawer();
                  // _scaffoldKey.currentState!.openDrawer();
                },
                child: SvgPicture.asset(
                  'assets/icons/Menu_icon.svg',
                  width: size.width * 0.05,
                  color: Colors.purple,
                ),
              ),
              SizedBox
              (
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello John',
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: size.width * 0.065,
                      fontWeight: FontWeight.w900
                    ),
                  ),
                  Text(
                    'Good Morning',
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: size.width * 0.035,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                ],
              ),
              Spacer(),
              // GestureDetector(
              //   onTap: ()
              //     {
              //       log('opendialo');
              //       // DialogHelper.exit(context);
              //     },
              //   child: Container
              //   (
              //     height: 40,
              //     width: 90,
              //     decoration: BoxDecoration(
              //       border: Border.all(
              //         color: Colors.purple,
              //           // color: Appcolor.darkviolte,
              //           style: BorderStyle.solid,
              //           width: 1.0,
              //       ),
              //       color: Colors.transparent,
              //       borderRadius: BorderRadius.circular(10.0),
              //             ),
              //             child: Center(
              //               child: Icon(Icons.settings),
              //   // child: Text
              //   // (
              //   //   'Connect Wallet',
              //   //   style: TextStyle
              //   //   (
              //   //     color: Colors.amber,
              //   //     // color: Appcolor.darkviolte,
              //   //     fontSize: 16,
              //   //     fontWeight: FontWeight.w900,
              //   //     letterSpacing: 1
              //   //   ),
              //   // ),
              //             ),
              //     // color: Colors.red,
              //   ),
              // ),
              Icon(Icons.settings,size: 30,),
              SizedBox
              (
                width: 10,
              ),
              CircleAvatar(
                backgroundColor: Colors.purple.shade100,
                backgroundImage: NetworkImage('https://app.hami.live/static/media/logo.fa40f84cc28cef735cc2.png'),
                // backgroundImage: AssetImage(
                //   'assets/images/profile_image.png',
                // ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            margin: EdgeInsets.only(
              left: size.width * 0.06,
              right: size.width * 0.06,
              top: size.height * 0.02,
            ),
            height: size.height * 0.05,
            decoration: BoxDecoration(
              color: const Color(0xffE6E7E9),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search',
                hintStyle: const TextStyle(
                  color: Color(0xff9CA3AF),
                ),
                icon: SvgPicture.asset('assets/icons/search_icon.svg'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
