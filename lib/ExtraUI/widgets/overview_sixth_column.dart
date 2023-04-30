import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class OverviewSixthColumn extends StatelessWidget {
  const OverviewSixthColumn({super.key});

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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Bets For You", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                    Text("Recomended just for you"),
                  ],
                ),
                Container(
                  width: 150,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(width: 1, color: const Color(0xFFF2F2F2),)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFABE2C),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Icon(Icons.lock),
                      ),
                      const Text("Unlock ratings", style: TextStyle(color: Color(0xFF0C49BE), fontSize: 16),)
                    ],
                  )
                  // const Align(
                  //   alignment: Alignment.center,
                  //   child: Text(
                  //     "See All",
                  //     style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 16), 
                  //   )
                  // )
                )
              ],
            ),
            
            const Gap(13),
            Container(
              height: 300,
              width: double.infinity,
              // decoration: BoxDecoration(
              //   border: Border.all(width: 1.5, color: Colors.grey.shade300),
              //   borderRadius: BorderRadius.circular(10.0)
              // ),
              child: ListView.builder(
                itemCount: 4,
                shrinkWrap: true,
                primary: false,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return UnconstrainedBox(
                    child: Container(
                      height: 250,
                      width: 230,
                      decoration: BoxDecoration(
                        // color: Colors.grey,
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(width: 1, color: const Color(0xFFF2F2F2))
                      ),
                      margin: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: 30,
                            width: double.infinity,
                            decoration: const BoxDecoration(
                              color: const Color(0xFFF2F2F2),
                              borderRadius: const BorderRadius.only(topLeft: Radius.circular(10.0),topRight: Radius.circular(10.0)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Icon(Icons.local_fire_department, color: Color(0xFFF03800),),
                                  Gap(8),
                                  Text("allmis is on a streak")
                                ],
                              ),
                            ),
                          ),
                          const Gap(10),
                          const CircleAvatar(backgroundImage: NetworkImage('https://assets.turbologo.com/blog/en/2020/01/19084653/Premier-League-symbol-958x575.png'),),
                          const Gap(10),
                          const Text("Twins - 1.5", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                          const Gap(3),
                          const Text("Run Line"),
                          const Gap(10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 20,
                                width: 75,
                                decoration: BoxDecoration(
                                  border: Border.all(width: 1, color: const Color(0xFFF2F2F2)),
                                  borderRadius: BorderRadius.circular(6.0)
                                ),
                                child: const Align(alignment: Alignment.center, child: Text("KC @ MIN", style: TextStyle(fontWeight: FontWeight.bold),)),
                              ),
                              const Gap(9),
                              Container(
                                height: 20,
                                width: 90,
                                decoration: BoxDecoration(
                                  border: Border.all(width: 1, color: const Color(0xFFF2F2F2)),
                                  borderRadius: BorderRadius.circular(6.0)
                                ),
                                child: const Align(alignment: Alignment.center, child: Text("4/29 1:55AM", style: TextStyle(fontWeight: FontWeight.bold),)),
                              ),
                            ],
                          ),
                          const Gap(15),
                          Container(
                            height: 60,
                            width: 160,
                            decoration: BoxDecoration(
                              border: Border.all(width: 2, color: const Color(0xFFFABE2C)),
                              borderRadius: BorderRadius.circular(10.0)
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(Icons.star),
                                    Icon(Icons.star),
                                    Icon(Icons.star),
                                    Icon(Icons.star),
                                    Icon(Icons.star),
                                  ],
                                ),
                                const Gap(10),
                                const Text("Upgrade", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              )
            )
          ],
        ),
      ),
    );
  }
}