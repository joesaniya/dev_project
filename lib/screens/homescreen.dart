import 'package:flutter/material.dart';

import '../widgets/appbar_widget.dart';
import '../widgets/card_widget.dart';
import '../widgets/device_info.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold
    (
      backgroundColor: Colors.grey.shade400,
      drawer: Drawer(),
      body: Stack(
        children: [
          Column(
            
            children: 
            [
              TopWidgetHomePage(size: size),

              Padding(
                padding: const EdgeInsets.only(left:35.0,right: 35),
                child: DeviceInfo(size:size),
              ),
              
              SizedBox
              (
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left:35.0,right: 35),
                child: CardDevice(size:size),
              ),
              
              
            ],
          ),
          // ListView(
          //   children: const [
          //     Text('Item 1'),
          //     Text('Item 2'),
          //     Text('Item 3'),
          //   ],
          // ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              // crossAxisAlignment: cro,
              children: [

                //1
                Expanded(
                  child: Container(
                    width: double.infinity,
                              // width: 500,
                              height: 58,
                              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.purple,
                      Colors.deepPurple
                      // Colors.blue,
                      // Colors.blueAccent,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    bottomLeft: Radius.circular(8.0),
                    bottomRight: Radius.circular(8.0),
                    topRight: Radius.circular(8.01), // FLUTTER BUG FIX
                  ),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(0, 0),
                      blurRadius: 10.0,
                    ),
                  ],
                              ),
                              child: Center(
                  child: Container(
                    child: Text("ADD DEVICE",style: TextStyle(fontSize: 20,color: Colors.white),),
                  ),
                              ),
                            ),
                ),

                SizedBox
                (
                  width: 4,
                ),

                //2
                Expanded(
                  child: Container(
                    // width: 500,
                    height: 58,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.purple,
                          Colors.deepPurple
                          // Colors.blue,
                          // Colors.blueAccent,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        bottomLeft: Radius.circular(8.0),
                        bottomRight: Radius.circular(8.0),
                        topRight: Radius.circular(8.01), // FLUTTER BUG FIX
                      ),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(0, 0),
                          blurRadius: 10.0,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Container(
                        child: Text("ADD DEVICE",style: TextStyle(fontSize: 20,color: Colors.white),),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // child: Container(
            //   margin: const EdgeInsets.all(5),
            //   width: double.infinity,
            //   child: ElevatedButton(
            //     onPressed: () {},
            //     child: const Text('Bottom Button '),
            //   ),
            // ),
          )
        ],
      ),
    );
    
  }
}