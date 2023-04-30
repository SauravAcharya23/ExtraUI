import 'package:extraui/ExtraUI/widgets/calander.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class MyBetsPage extends StatefulWidget {
  const MyBetsPage({super.key});

  @override
  State<MyBetsPage> createState() => _MyBetsPageState();
}

class _MyBetsPageState extends State<MyBetsPage> {

  // Initial Selected Value
  String dropdownvalue = 'By Sport';   
  
  // List of items in our dropdown menu
  var items = [    
    'By Sport',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  final double progress = 0.0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: const Color(0xFFF2F2F2),
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 230,
                width: double.infinity,
                color: const Color(0xFFFFFFFF),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 25,
                            width: 140,
                            // color: Colors.amber,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Icon(Icons.mode_standby, color: Color(0xFFACDEF8),),
                                Text("Sync your Bets", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                              ],
                            ),
                          ),
                          const Icon(Icons.close, size: 30,)
                        ],
                      ),
                      const Gap(4),
                      const Text("Sync your real bets with Sportsbook Sync to track bets, analyze performance, compete on leaderboards, and share with the BettingPros Community"),
                      const Gap(10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF0C49BE),
                          elevation: 0,
                          fixedSize: const Size(200, 50),
                          alignment: Alignment.centerLeft
                        ),
                        onPressed: (){}, 
                        child: const Text("Connect to Sportsbook", style: TextStyle(fontSize: 16, color: Color(0xFFFFFFFF),),)
                      ),
                      const Gap(10),
                      const Text("We take our privacy seriously. You have full control over how other people see or don't see your real bets")
                    ],
                  ),
                ),
              ),
              const Gap(8),
              Container(
                height: 750,
                width: double.infinity,
                color: const Color(0xFFFFFFFF),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("My Bets", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                      const Text("View, share, analyze bets"),
                      const Gap(8),
                      CalenderWidget(),

                      const Gap(14),
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 130,
                            decoration: BoxDecoration(
                              border: Border.all(width: 2.0, color: const Color(0xFFF4F4F4),),
                              borderRadius: BorderRadius.circular(10.0)
                            ),
                            child: Row(
                              children: [
                                const Icon(Icons.verified_user, color: Color(0xFF940E10),),
                                const Gap(7),
                                DropdownButton(
                                  value: dropdownvalue,
                                  icon: const Icon(Icons.keyboard_arrow_down),  
                                  items: items.map((String items) {
                                    return DropdownMenuItem(
                                      value: items,
                                      child: Text(items),
                                    );
                                  }).toList(), 
                                  onChanged: (String? newValue) { 
                                    setState(() {
                                      dropdownvalue = newValue!;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                          const Gap(20),
                          Container(
                            height: 40,
                            width: 100,
                            decoration: BoxDecoration(
                              border: Border.all(width: 2.0, color: const Color(0xFFF4F4F4)),
                              borderRadius: BorderRadius.circular(10.0)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: const [
                                Icon(Icons.tune,color:  Color(0xFFD3EF30),),
                                Text("Filters", style: TextStyle(fontSize: 16),)
                              ],
                            ),
                          )
                        ],
                      ),
                      
                      GridView.builder(
                        itemCount: 4,
                        shrinkWrap: true,
                        primary: false,
                        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 200,
                          childAspectRatio: 3 / 2,
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 5
                        ), 
                        itemBuilder: (context, index) {
                          return Card(
                            elevation: 1.5,
                            //color: Colors.grey[200],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: const BorderSide(width: 2.0, color: Color(0xFFF2F2F2),)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15.0, top: 15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("PROFIT", style: TextStyle(fontSize: 16, letterSpacing: 0.6),),
                                  const Text("\$ 9.20", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                  const Gap(10),
                                  Container(
                                    height: 40,
                                    child: SfSparkLineChart(

                                      color: const Color(0xFF07A157),
                                      axisLineWidth: 0,
                                      // trackball: const SparkChartTrackball(
                                      //   activationMode: SparkChartActivationMode.tap,
                                      // ),
                                      marker: const SparkChartMarker(displayMode: SparkChartMarkerDisplayMode.none,),
                                      
                                      //labelDisplayMode: SparkChartLabelDisplayMode.all,
                                      data: const [
                                        -4, -10, 13, -6, 7, 5, 11, 5, 3
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                      const Gap(10),
                      Row(
                        children: const [
                          Text("1 Bets"),
                          Gap(30),
                          Text("1-0 Record")
                        ],
                      ),
                      const Gap(15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("THIS MONTH (1-0)"),
                          Text("\$9.20 Won")
                        ],
                      ),
                      const Gap(10),
                      Container(
                        height: 200,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1.5, color: const Color(0xFFF2F2F2)),
                          borderRadius: BorderRadius.circular(10.0)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0, top: 10.0, right: 8.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  const CircleAvatar(backgroundColor:  Color(0xFFE57E25),backgroundImage: NetworkImage('https://assets.turbologo.com/blog/en/2020/01/19084653/Premier-League-symbol-958x575.png'),),
                                  const Gap(15),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text("Timberwolves -5.5", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: const [
                                          Icon(Icons.sports_basketball_rounded, size: 25,color: Color(0xFFFABE2C),),
                                          Gap(7),
                                          Text("Spread")
                                        ],
                                      )
                                    ],
                                  ),
                                  const Gap(20),
                                  Container(
                                    width: 140,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          height: 25,
                                          width: 130,
                                          alignment: Alignment.topLeft,
                                          decoration: BoxDecoration(
                                            //color: Colors.amber,
                                            borderRadius: BorderRadius.circular(7.0),
                                            border: Border.all(width: 1, color: const Color(0xFFF2F2F2),)
                                          ),
                                          child: Align(alignment: Alignment.center, child: Text("OCK95 @ MIN 120", style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center)),
                                        ),
                                        const Text("Final . 4/15", style: TextStyle(fontSize: 16),)
                                      ],
                                    ),
                                  ),
                                  
                                ],
                              ),
                              const Gap(10),
                              Container(
                                height: 50,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7.0),
                                  border: Border.all(width: 1, color: const Color(0xFFF2F2F2)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 7.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Icon(Icons.bolt, color: Color(0xFF0C49BE),size: 26,),
                                      Column(
                                        children: const [
                                          Text("\$10", style: TextStyle(fontWeight: FontWeight.bold),),
                                          Text("WAGER")
                                        ],
                                      ),
                                      Column(
                                        children: const [
                                          Text("-109", style: TextStyle(fontWeight: FontWeight.bold),),
                                          Text("ODDS")
                                        ],
                                      ),
                                      Column(
                                        children: const [
                                          Text("\$9.20", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF07A157)),),
                                          Text("WON")
                                        ],
                                      ),
                                      const Icon(Icons.check_circle, color: Color(0xFF07A157),)
                                    ],
                                  ),
                                ),
                              ),
                              const Gap(10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 30,
                                    width: 170,
                                    child: Row(
                                      children: const [
                                        CircleAvatar(
                                          backgroundColor: Color(0xFF07A157),
                                          child: Text("S"),
                                        ),
                                        Text("saurvachary +83", style: TextStyle(fontSize: 16),)
                                      ],
                                    ),
                                  ),
                                  const Text("15% won"),
                                  
                                ],
                              ),
                              const Gap(10),
                              SfLinearGauge(
                                showLabels: false,
                                showTicks: false,
                                barPointers: const [
                                  LinearBarPointer(
                                    color: Color(0xFF07A157),
                                    value: 30,
                                    edgeStyle: LinearEdgeStyle.bothCurve,
                                    thickness: 6.0,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}