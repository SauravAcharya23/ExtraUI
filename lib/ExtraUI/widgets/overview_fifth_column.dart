import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class OverviewFifthColumn extends StatefulWidget {
  const OverviewFifthColumn({super.key});

  @override
  State<OverviewFifthColumn> createState() => _OverviewFifthColumnState();
}

class _OverviewFifthColumnState extends State<OverviewFifthColumn> {

  final List<String> items= ["Active", "Settled"];
  int current = 0;

  @override
  Widget build(BuildContext context) {
    
    return Container(
      height: 400,
      width: double.infinity,
      color: const Color(0xFFFFFFFF),
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    Row(
                      children: const [
                        Text("Latest ", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Color(0xFF940E10)),),
                        Text("Bets", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                      ],
                    ),
                    const Text("1 settled bets"),
                  ],
                ),
                const Gap(4),
                Container(
                  width: 100,
                  height: 25,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFEA2E),
                    borderRadius: BorderRadius.circular(8.0)
                  ),
                  child: Row(
                    children: const [
                      Icon(Icons.verified_user, color: Color(0xFF940E10),),
                      Text("VERIFIED",style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF940E10)), )
                    ],
                  ),
                ),
                const Gap(90),
                Container(
                  width: 80,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(width: 1, color: Colors.grey.shade300)
                  ),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      "See All",
                      style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF0C49BE), fontSize: 16), 
                    )
                  )
                )
              ],
            ),
            
            const Gap(8),
            
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color(0xFFCCCCCC),
              ),
              child: ListView.builder(
                itemCount: items.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: (){
                      setState(() {
                        current = index;
                      });
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 100),
                      margin: const EdgeInsets.all(6),
                      width: 190,
                      decoration: BoxDecoration(
                        color: current == index ? Colors.white : Color(0xFFCCCCCC),
                        borderRadius: BorderRadius.circular(15.0)
                        //borderRadius: current == 0 ? const BorderRadius.only(bottomLeft: Radius.circular(30.0), topLeft: Radius.circular(30.0)) : const BorderRadius.only(bottomRight: Radius.circular(30.0), topRight: Radius.circular(30.0))
                      ),
                      child: Center(child: Text(items[index], style: TextStyle(color: current == index ? Color(0xFF040404) : Color(0xFFF9F9F9), fontSize: 18, fontWeight: current == index ? FontWeight.bold: FontWeight.normal),))
                    ),
                  );
                },
              )
            ),
            const Gap(13),
            current == 0 ? Center(child: Text('No bets found')) 
            : Container(
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
                                  border: Border.all(width: 1, color: Colors.grey.shade300)
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
    );
  }
}