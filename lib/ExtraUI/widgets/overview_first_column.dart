import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
class OverviewFirstColumn extends StatelessWidget {
  const OverviewFirstColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      color: const Color(0xFFFFFFFF),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 50,
                  width: 130,
                  decoration: BoxDecoration(
                    color: const Color(0xFF0C49BE),
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  child: const Align(alignment: Alignment.center, child: Text("Sync Bets", style: TextStyle(fontSize: 16, color: Colors.white),)),
                ),
                Container(
                  height: 50,
                  width: 130,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF2F2F2),
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  child: const Align(alignment: Alignment.center, child: Text("Edit Profile", style: TextStyle(fontSize: 16,),)),
                ),
                Container(
                  height: 50,
                  width: 70,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF2F2F2),
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  child: const Align(alignment: Alignment.center, child: Icon(Icons.settings, color: Color(0xFFAFC7E9),)),
                )
              ],
            ),
          ),
          const Gap(7),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 20,
                width: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text("0", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                    Text("Following", style: TextStyle(fontSize: 16, color: Color(0xFFAAC2E3)),)
                  ],
                ),
              ),
              SizedBox(
                height: 20,
                width: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text("0", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                    Text("Followers", style: TextStyle(fontSize: 16, color: Color(0xFFAAC2E3)),)
                  ],
                ),
              ),
              SizedBox(
                height: 20,
                width: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text("0", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                    Text("Groups", style: TextStyle(fontSize: 16, color: Color(0xFFAAC2E3)),)
                  ],
                ),
              ),
              
            ],
          ),
        ],
      ),
    );
  }
}