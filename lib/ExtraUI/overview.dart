import 'package:extraui/ExtraUI/widgets/overview_fifth_column.dart';
import 'package:extraui/ExtraUI/widgets/overview_first_column.dart';
import 'package:extraui/ExtraUI/widgets/overview_fourth_column.dart';
import 'package:extraui/ExtraUI/widgets/overview_second_column.dart';
import 'package:extraui/ExtraUI/widgets/overview_sixth_column.dart';
import 'package:extraui/ExtraUI/widgets/overview_third_column.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class OverviewPage extends StatefulWidget {
  const OverviewPage({super.key});

  @override
  State<OverviewPage> createState() => _OverviewPageState();
}

class _OverviewPageState extends State<OverviewPage> {

  

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: const Color(0xFFF2F2F2),//F9F9F9
        child: Column(
          children: [
            const Gap(7),
            const OverviewFirstColumn(),
            const Gap(8),
            const OverviewSecondColumn(),
            const Gap(8),
            const OverviewThirdColumn(),
            const Gap(8),
            const OverviewFourthColumn(),
            const Gap(8),
            const OverviewFifthColumn(),
            const Gap(8),
            const OverviewSixthColumn(),
            const Gap(8),
          ],
        ),
      ),
    );
  }
}










// List.generate(7, (index){
                      //   return Container(
                      //     margin: EdgeInsets.only(right: 13),
                      //     height: 40,
                      //     width: 40,
                      //     decoration: BoxDecoration(
                      //       color: Colors.pink,
                      //       borderRadius: BorderRadius.circular(5.0)
                      //     ),
                      //     child: Text(index.toString()),
                      //   );
                      // }),