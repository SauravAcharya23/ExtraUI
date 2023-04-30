import 'package:extraui/ExtraUI/widgets/calander.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class OverviewSecondColumn extends StatelessWidget {
  const OverviewSecondColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 650,
      width: double.infinity,
      color: const Color(0xFFFFFFFF),
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Text("Best  ", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF940E10)),),
                Text("Performance ", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
              ],
            ),
            const Gap(6),
            const Text("Mar 27 - Apr 27, 2023", style: TextStyle(fontSize: 14),),
            const Gap(10),
            CalenderWidget(),
            GridView.builder(
              itemCount: 4,
              shrinkWrap: true,
              primary: false,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 5 / 2,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5
              ), 
              itemBuilder: (context, index) {
                return Card(
                  elevation: 1.5,
                  // color: Colors.grey[200],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: const BorderSide(width: 2.0, color: Color(0xFFF2F2F2),)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("PROFIT", style: TextStyle(fontSize: 16, letterSpacing: 0.6),),
                        Text("\$ 9.20", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                );
              },
            ),
            SizedBox(
              height: 25,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 130,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("1 Bets"),
                        Text("1-0 Record")
                      ],
                    ),
                  ),
                  const Text("\$0.31 Daily Avg", style: TextStyle(fontSize: 14),)
                ],
              ),
            ),
            const Gap(8),
            SfCartesianChart(
              primaryXAxis: CategoryAxis(),
              //legend: Legend(isVisible: true),
              series: <LineSeries<SalesData, String>>[
                LineSeries<SalesData, String>(
                  // Bind data source
                  dataSource:  <SalesData>[
                    SalesData('4-1', 0),
                    SalesData('4-6', 0),
                    SalesData('4-11', 0),
                    SalesData('4-16', 9),
                    SalesData('4-21', 0),
                    SalesData('4-26', 0),
                  ],
                  xValueMapper: (SalesData sales, _) => sales.year,
                  yValueMapper: (SalesData sales, _) => sales.sales,
                  color: const Color(0xFF07A157),
                )
              ],
              isTransposed: false,
              
            )
            // Container(
            //   height: 50,
            //   child: 
            // )
          ],
        ),
      ),
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}