import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class OverviewThirdColumn extends StatefulWidget {
  const OverviewThirdColumn({super.key});

  @override
  State<OverviewThirdColumn> createState() => _OverviewThirdColumnState();
}

class _OverviewThirdColumnState extends State<OverviewThirdColumn> {
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
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: double.infinity,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children:const [
                        Text("Bet ", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Color(0xFF940E10)),),
                        Text("Summary", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                      ],
                    ),
                    const Text("Most bet in last 30 days"),
                  ],
                ),
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
                )
              ],
            ),
            // const Text("Most bet in last 30 days"),
            Container(
              height: 200,
              child: SfRadialGauge(
                axes: [
                  RadialAxis(
                    // minimum: 0,
                    // maximum: 320,
                    startAngle: 180,
                    endAngle: 0,
                    canScaleToFit: true,
                    // maximumLabels: 320,
                    // canRotateLabels: true,
                    // labelsPosition: ElementsPosition.outside,
                    // ticksPosition: ElementsPosition.outside,
                    // showTicks: false,
                    // radiusFactor: 1.1,
                    axisLineStyle: AxisLineStyle(
                      thickness: 45,
                      color: Color(0xFF0C49BE),
                      // dashArray: <double>[(320+100) / 5, 3],
                    ),
                    // canRotateLabels: false,
                    // isInversed: false,
                    // showFirstLabel: false,
                    showLabels: false,
                    showTicks: false,
                    // ranges: [
                    //   GaugeRange(
                    //     startValue: 0, 
                    //     endValue: 50,
                    //     color: Colors.green,
                    //   )
                    // ],
                    annotations: [
                      GaugeAnnotation(
                        //axisValue: 100,
                        positionFactor: 0.7,
                        angle: 90,
                        widget: Column(
                          children: [
                            Text("1", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),),
                            Text("BETS", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),)
                          ],
                        ),
                        // angle: 180,
                        // horizontalAlignment: GaugeAlignment.near,
                        // positionFactor: 0.78,
                        // verticalAlignment: GaugeAlignment.near,
                        // widget: Text(
                        //   "0",
                        //   style: TextStyle(
                        //     color: Colors.black,
                        //     fontWeight: FontWeight.bold,
                        //     fontSize: 14,
                        //   ),
                        // )
                      ),
                    ],
                    // pointers: const <GaugePointer>[
                    //   MarkerPointer(
                    //     value: 223,
                    //     markerHeight: 15,
                    //     markerWidth: 15,
                    //     enableDragging: true,
                    //     overlayRadius: 12,
                    //     borderColor: Colors.green,
                    //     borderWidth: 2,
                    //     color: Colors.white,
                    //     markerType: MarkerType.circle
                    //   )
                    // ],
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Container(
                  height: 20,
                  width: 230,
                  // color: Colors.amber,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("RECORD"),
                      Text("PROFIT"),
                      Text("ROI"),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(thickness: 1),
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Icon(Icons.circle, color: Color(0xFF8FBAE9),size: 17,),
                    Gap(5),
                    Text("NBA", style: TextStyle(color: Color(0xFF8FBAE9)),)
                  ],
                ),
                const Gap(80),
                Container(
                  height: 20,
                  width: 50,
                  // color: Colors.amber,
                  child: const Text("1-0"),
                ),
                const Gap(50),
                Container(
                  height: 20,
                  width: 50,
                  // color: Colors.amber,
                  child: const Text("\$9.20"),
                ),
                const Gap(45),
                Container(
                  height: 20,
                  // width: 40,
                  // color: Colors.amber,
                  child: const Text("92.0%", style: TextStyle(color: Color(0xFF07A157),),),
                ),
                // Align(
                //   alignment: Alignment.centerRight,
                //   child: Padding(
                //     padding: const EdgeInsets.only(right: 15.0),
                //     child: Container(
                //       height: 20,
                //       width: 220,
                //       color: Colors.amber,
                //       child: Row(
                //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //         children: [
                //           Text("1-0"),
                //           Text("\$9.20"),
                //           Text("92.0%", style: TextStyle(color: Colors.green),),
                //         ],
                //       ),
                //     ),
                //   ),
                // ),
              ],
            )
          ],
        ),
      ),
    );
  }
}