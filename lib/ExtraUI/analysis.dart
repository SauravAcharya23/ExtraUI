import 'package:extraui/ExtraUI/widgets/calander.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class AnalysisPage extends StatefulWidget {
  const AnalysisPage({super.key});

  @override
  State<AnalysisPage> createState() => _AnalysisPageState();
}

class _AnalysisPageState extends State<AnalysisPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(10),
            Row(
              children: [
                const Text("Splits", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                const Gap(4),
                Container(
                  width: 100,
                  height: 25,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFEA2E),////ACDEF8
                    borderRadius: BorderRadius.circular(8.0)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Icon(Icons.verified_user, color: Color(0xFF940E10),size: 20,),//0C49BE-> blue
                      Text("VERIFIED",style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF940E10),), )
                    ],
                  ),
                )
              ],
            ),
            const Gap(5),
            const Text("Performance by sport and bet type"),
            const Gap(10),
            const CalenderWidget(),

            GridView.builder(
              itemCount: 9,
              shrinkWrap: true,
              primary: false,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
              itemBuilder: (context, index) => Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                color: Color(0xFFFFFFFF),
                child: Padding(
                  padding: const EdgeInsets.only(top: 13.0),
                  child: Column(
                    children: [
                      const Icon(FontAwesomeIcons.sackDollar,color: Color(0xFFE57E25)),
                      const Gap(10),
                      const Text("ATS-Overall", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                      const Gap(3),
                      const Text("1-0(100%)"),
                      const Gap(9),
                      const Text("+92.0% ROI", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF07A157), fontSize: 16),),
                      const Gap(15),
                      Container(
                        height: 40,
                        child: SfSparkLineChart(
                          color: const Color(0xFF07A157),
                          axisLineWidth: 0,
                          // trackball: const SparkChartTrackball(
                          //   activationMode: SparkChartActivationMode.tap,
                          // ),
                          marker: const SparkChartMarker(displayMode: SparkChartMarkerDisplayMode.none),
                          //labelDisplayMode: SparkChartLabelDisplayMode.all,
                          data: const [
                            -4, -10, 13, -6, 7, 5, 11, 5, 3
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}