import 'package:flutter/material.dart';
import 'package:flutter_assignment/UTILITIES/appContainer1.dart';
import 'package:flutter_assignment/UTILITIES/appContainers.dart';
import 'package:flutter_assignment/UTILITIES/appText.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _value = 0.0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: .1,
        title: const Text(
          "Corner Field",
          style: TextStyle(color: Colors.black),
        ),
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppText(text: "Zone 3",textsize: 16,),
                 // SizedBox(width: 40,),
                  Icon(Icons.close)],
              ),
              SizedBox(height: 10,),
              //const Text("Soil Water Status"),
              AppText(text: "Soil Water Status",textsize: 17,),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Row(
                        children:  [
                          Text("1 ft", style: TextStyle(fontSize: 16)),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                              height: 110,
                              width: 110,
                               //color: Colors.red,
                              child: Stack(
                                children: [
                                  const Center(
                                      child: AppContainers(
                                        height: 70,
                                        width: 100,
                                        text: '2.48"',
                                        color: Colors.green,
                                      )),
                                  Positioned(top: -15,right: 20,left: 20,
                                      child: Image.asset('assets/icons/plant.png')),
                                ],
                              ))
                        ],
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Row(
                        children: [
                          const Text(
                            "2 ft",
                            style: TextStyle(fontSize: 16),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: 70,
                            width: 110,
                            //color: Colors.red,
                            child: const Center(
                                child: AppContainers(
                              height: 70,
                              width: 100,
                              text: '3.19"',
                              color: Colors.green,
                            )),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children:  [
                          Text("3 ft", style: TextStyle(fontSize: 16)),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: 80,
                            width: 110,
                            child: const Center(
                              child: AppContainers(
                                height: 70,
                                width: 100,
                                text: '3.11"',
                                color: Colors.green,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),

                  Column(
                    children: [
                      AppContainers1(
                        childrens: [
                          AppText(text: "Water in Profile",),
                          //SizedBox(height: 7,),
                          AppText(text: '8.78"',textsize: 22,fontweight: FontWeight.bold,),
                          //SizedBox(height: 7,),
                          AppText(text: '72% Full',textsize: 20,fontweight: FontWeight.w900,),
                        ],

                      ),
                      // Container(
                      //   height: 150,
                      //   width: 180,
                      //   decoration: BoxDecoration(
                      //       borderRadius: BorderRadius.circular(10),
                      //       border: Border.all(color: Colors.yellow)),
                      //   child: Column(
                      //     children: [
                      //       SizedBox(
                      //         height: 13,
                      //       ),
                      //       Text(
                      //         "Water in Profile",
                      //         style: TextStyle(fontSize: 14),
                      //       ),
                      //       SizedBox(
                      //         height: 13,
                      //       ),
                      //       Text('8.78"',
                      //           style: TextStyle(
                      //               fontSize: 22,
                      //               fontWeight: FontWeight.bold)),
                      //       SizedBox(
                      //         height: 13,
                      //       ),
                      //       Text('72% Full',
                      //           style: TextStyle(
                      //               fontSize: 18,
                      //               fontWeight: FontWeight.bold)),
                      //     ],
                      //   ),
                      // ),
                      SizedBox(
                        height: 10,
                      ),
                      AppContainers1(
                        childrens: [
                          AppText(text: "To Refill Profile",),
                          //SizedBox(height: 4,),
                          AppText(text: '3.46"',textsize: 22,fontweight: FontWeight.w700,),
                          //SizedBox(height: 7,),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Details",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    primary: Colors.yellow.shade600,
                                    minimumSize: Size(80, 40),
                                  ),
                                )
                        ],

                      ),


                    ],
                  ),
                ],
              ),
              SizedBox(height: 13,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppText(text: "Forecast - Next 0 Days",textsize: 18,)

                ],
              ),
              SfSlider(
                activeColor:  Colors.red,
                inactiveColor: Colors.yellow,
                min: 0.0,
                stepSize:1 ,
                max: 7.0,
                value: _value,
                interval: 1,
                showTicks: true,
                showLabels: true,
                enableTooltip: true,
                minorTicksPerInterval: 0,
                onChanged: (dynamic value){
                  setState(() {
                    _value = value;
                  });
                },
              ),
              SizedBox(height: 17,),



              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 100,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.red.shade100)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: 10,),
                            AppText(text: "Water Out"),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('assets/icons/humidity.png',height: 40,width: 40,),
                                SizedBox(width: 11,),
                                AppText(text: '0.19"',textsize: 18,),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: 100,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.red.shade100)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:  [
                            SizedBox(height: 10,),
                            AppText(text: "Water In"),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('assets/icons/raining.png',height: 40,width: 40,),
                                SizedBox(width: 11,),
                                AppText(text: '0.0"',textsize: 18,),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 210,
                    width: 170,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.red.shade100)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:  [
                        SizedBox(height:24,),
                        AppText(text: "Water Need",),
                        SizedBox(height:4,),
                        Image.asset('assets/icons/watering.png',height: 110,width: 100,),
                        SizedBox(height:4,),
                        AppText(text: '3.65"',textsize: 28,fontweight: FontWeight.bold,),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
