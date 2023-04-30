import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class OverviewFourthColumn extends StatelessWidget {
  const OverviewFourthColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: ListView.builder(
        itemCount: 5,
        shrinkWrap: true,
        //primary: false,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return UnconstrainedBox(
            child: Container(
              height: 180,
              width: 150,
              decoration: BoxDecoration(
                color: const Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [BoxShadow(color: Color(0xFF040404), blurRadius: 2.0)]
              ),
              margin: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Column(
                  children: const [
                    Text("BEST SPORT", style: TextStyle(fontSize: 16, letterSpacing: 0.5),),
                    Gap(8),
                    Icon(Icons.sports_basketball, size: 30,color: Color(0xFFFABE2C),),
                    Gap(8),
                    Text("NBA", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                    Gap(8),
                    Text("1-0 (100%)"),
                    Gap(14),
                    Text("\$9.20", style: TextStyle(fontSize: 16, color: Color(0xFF07A157), fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}