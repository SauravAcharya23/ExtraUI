import 'package:extraui/ExtraUI/analysis.dart';
import 'package:extraui/ExtraUI/my_bets.dart';
import 'package:extraui/ExtraUI/overview.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ExtraUI extends StatefulWidget {
  const ExtraUI({super.key});

  @override
  State<ExtraUI> createState() => _ExtraUIState();
}

class _ExtraUIState extends State<ExtraUI> {

  var top = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                leading: const Icon(Icons.menu),
                backgroundColor: const Color(0xFF940E10),

                actions: const [
                  Padding(
                    padding: EdgeInsets.only(right: 10.0),
                    child: Icon(Icons.more_horiz),
                  )
                ],
                expandedHeight: 250,
                pinned: true,
                // floating: false,
                flexibleSpace: LayoutBuilder(builder: (ctx, cons) {
                  top = cons.biggest.height;
                  return FlexibleSpaceBar(
                    title: AnimatedOpacity(
                      duration: Duration.zero,
                      // duration: const Duration(milliseconds: 300),
                      opacity: top <= 130 ? 1.0: 0.0,
                      child: const Text('SauravAcharya', textScaleFactor: 1)
                    ),
                    // background: Image.network('https://picsum.photos/400/300',fit: BoxFit.fill,),
                    background: Container(
                      color: const Color(0xFF940E10),
                      // decoration: const BoxDecoration(
                      //   image: DecorationImage(
                      //     image: NetworkImage('https://img.freepik.com/premium-photo/red-natural-leather-texture_254969-1288.jpg'),fit: BoxFit.cover//https://wallpapercave.com/wp/wp7459815.jpg // https://images3.alphacoders.com/222/222815.jpg
                      //   )
                      // ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 75.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15.0,),
                              child: Row(
                                children: [
                                  const CircleAvatar(
                                    backgroundColor: Color(0xFF07A157),
                                    radius: 30,
                                    child: Text("S", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                                  ),
                                  const Gap(20),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text("Saurav Acharya", style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 16, fontWeight: FontWeight.w700),),
                                      Text("SauravAcharya24@gmail.com",style: TextStyle(color: Color(0xFFFFFFFF),fontSize: 12)),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Gap(20),
                            Row(
                              children: [
                                Container(
                                  height: 70,
                                  width: 195,
                                  decoration: const BoxDecoration(
                                    // border: Border.all(width: 1)
                                    border: Border(right: BorderSide(width: 0.5,color: Color(0xFFFFFFFF)), top: BorderSide(width: 1,color: Color(0xFFFFFFFF)), bottom: BorderSide(width: 1,color: Color(0xFFFFFFFF)))
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Align(alignment: Alignment.center, child:Text("TOTAL BETS", style: TextStyle( fontSize: 14, color: Color(0xFFFFFFFF), fontWeight: FontWeight.w700),)),
                                      Align(alignment: Alignment.center, child: Text("111", style: TextStyle( fontSize: 12, fontWeight: FontWeight.bold, color: Color(0xFFFFFFFF))))
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 70,
                                  width: 195,
                                  decoration: const BoxDecoration(
                                    // border: Border.all(width: 1)
                                    border: Border(left: BorderSide(width: 0.5,color: Color(0xFFFFFFFF)), top: BorderSide(width: 1,color: Color(0xFFFFFFFF)), bottom: BorderSide(width: 1,color: Color(0xFFFFFFFF)))
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Align(alignment: Alignment.center, child:Text("LAST 30 DAYS", style: TextStyle( fontSize: 14, color: Color(0xFFFFFFFF),fontWeight: FontWeight.w700),)),
                                      Align(alignment: Alignment.center, child: Text("10 - 15", style: TextStyle( fontSize: 12, fontWeight: FontWeight.bold, color: Color(0xFFFFFFFF))))
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                      // Column(
                      //   crossAxisAlignment: CrossAxisAlignment.center,
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [
                      //     const Gap(25),
                          // const CircleAvatar(
                          //   backgroundColor: Color(0xFF07A157),
                          //   radius: 30,
                          //   child: Text("S", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                          // ),
                      //     const Gap(10),
                      //     const Text("SauravAcharya", style: TextStyle(fontSize: 16, color: Colors.white),),
                      //     const Gap(15),
                      //     Padding(
                      //       padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      //       child: Row(
                      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //         children: [
                      //           Container(
                      //             height: 70,
                      //             width: 110,
                      //             decoration: BoxDecoration(
                      //               color: const Color(0xFFF7F7F7),
                      //               borderRadius: BorderRadius.circular(16.0)
                      //             ),
                      //             child: Padding(
                      //               padding: const EdgeInsets.only(left: 8.0),
                                    // child: Column(
                                    //   mainAxisAlignment: MainAxisAlignment.center,
                                    //   crossAxisAlignment: CrossAxisAlignment.start,
                                    //   children: const [
                                    //     Text("TOTAL BETS", style: TextStyle( fontSize: 16),),
                                    //     Align(alignment: Alignment.center, child: Text("1", style: TextStyle( fontSize: 14, fontWeight: FontWeight.bold)))
                                    //   ],
                                    // ),
                      //             ),
                      //           ),
                      //           Container(
                      //             height: 70,
                      //             width: 120,
                      //             decoration: BoxDecoration(
                      //               color: const Color(0xFFF7F7F7),
                      //               borderRadius: BorderRadius.circular(16.0)
                      //             ),
                      //             child: Padding(
                      //               padding: const EdgeInsets.only(left: 8.0),
                      //               child: Column(
                      //                 mainAxisAlignment: MainAxisAlignment.center,
                      //                 crossAxisAlignment: CrossAxisAlignment.start,
                      //                 children: const [
                      //                   Text("LAST 30 DAYS", style: TextStyle(fontSize: 16)),
                      //                   Align(alignment: Alignment.center, child: Text("1 - 0", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)))
                      //                 ],
                      //               ),
                      //             ),
                      //           ),
                      //           Container(
                      //             height: 70,
                      //             width: 110,
                      //             decoration: BoxDecoration(
                      //               color: const Color(0xFFF7F7F7),
                      //               borderRadius: BorderRadius.circular(16.0)
                      //             ),
                      //             child: Padding(
                      //               padding: const EdgeInsets.only(left: 8.0),
                      //               child: Column(
                      //                 mainAxisAlignment: MainAxisAlignment.center,
                      //                 crossAxisAlignment: CrossAxisAlignment.center,
                      //                 children: const [
                      //                   Text("TOP RANK", style: TextStyle(fontSize: 16)),
                      //                   Text("-", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold))
                      //                 ],
                      //               ),
                      //             ),
                      //           ),
                      //         ],
                      //       ),
                      //     )
                      //   ],
                      // ),
                    ),
                  );
                },)
              ),
              SliverPersistentHeader(
                delegate: TabBarHeaderDelegate(
                  tabBar: const TabBar(
                    indicatorPadding: EdgeInsets.zero,
                    labelColor: Color(0xFF040404),
                    tabs: [
                      Tab(text: 'Overview',),
                      Tab(text: 'My Bets',),
                      Tab(text: 'Analysis',),
                    ]
                  )
                ),
                pinned: true,
              )
            ];
          },
          body: TabBarView(
            children: [
              OverviewPage(),
              MyBetsPage(),
              AnalysisPage(),
            ]
          ),
        ),
      ),
      
    );
  }
}

class TabBarHeaderDelegate extends SliverPersistentHeaderDelegate {
  final TabBar tabBar;

  TabBarHeaderDelegate({required this.tabBar});

  @override
  double get minExtent => tabBar.preferredSize.height;

  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(color: Color(0xFF040404), blurRadius: 4.0)]
      ),
      child: tabBar,
    );
    // Card(
    //   //color: Colors.black,
    //   child: tabBar,
    // );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) => true;
}


























// body: CustomScrollView(
      //   slivers: <Widget>[
          // SliverAppBar(
          //   leading: const Icon(Icons.menu),
          //   actions: const [
          //     Icon(Icons.more_horiz)
          //   ],
          //   expandedHeight: 250,
          //   pinned: true,
          //   flexibleSpace: LayoutBuilder(builder: (ctx, cons) {
          //     top = cons.biggest.height;
          //     return FlexibleSpaceBar(
          //       title: AnimatedOpacity(
          //         duration: Duration.zero,
          //         // duration: const Duration(milliseconds: 300),
          //         opacity: top <= 130 ? 1.0: 0.0,
          //         child: const Text('Goa', textScaleFactor: 1)
          //       ),
          //       // background: Image.network('https://picsum.photos/400/300',fit: BoxFit.fill,),
          //       background: Container(
          //         color: Colors.blue,
          //         child: Column(
          //           crossAxisAlignment: CrossAxisAlignment.center,
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           children: [
          //             const Gap(25),
          //             const CircleAvatar(
          //               backgroundColor: Colors.green,
          //               radius: 30,
          //               child: Text("S", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
          //             ),
          //             const Gap(10),
          //             const Text("SauravAcharya", style: TextStyle(fontSize: 16, color: Colors.white),),
          //             const Gap(15),
          //             Padding(
          //               padding: const EdgeInsets.symmetric(horizontal: 15.0),
          //               child: Row(
          //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                 children: [
          //                   Container(
          //                     height: 70,
          //                     width: 110,
          //                     decoration: BoxDecoration(
          //                       color: Colors.lightBlue,
          //                       borderRadius: BorderRadius.circular(16.0)
          //                     ),
          //                     child: Padding(
          //                       padding: const EdgeInsets.only(left: 8.0),
          //                       child: Column(
          //                         mainAxisAlignment: MainAxisAlignment.center,
          //                         crossAxisAlignment: CrossAxisAlignment.start,
          //                         children: const [
          //                           Text("TOTAL BETS", style: TextStyle(color: Colors.white, fontSize: 16),),
          //                           Text("1", style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold))
          //                         ],
          //                       ),
          //                     ),
          //                   ),
          //                   Container(
          //                     height: 70,
          //                     width: 120,
          //                     decoration: BoxDecoration(
          //                       color: Colors.lightBlue,
          //                       borderRadius: BorderRadius.circular(16.0)
          //                     ),
          //                     child: Padding(
          //                       padding: const EdgeInsets.only(left: 8.0),
          //                       child: Column(
          //                         mainAxisAlignment: MainAxisAlignment.center,
          //                         crossAxisAlignment: CrossAxisAlignment.start,
          //                         children: const [
          //                           Text("LAST 30 DAYS", style: TextStyle(color: Colors.white,fontSize: 16)),
          //                           Text("1-0", style: TextStyle(color: Colors.white,fontSize: 14, fontWeight: FontWeight.bold))
          //                         ],
          //                       ),
          //                     ),
          //                   ),
          //                   Container(
          //                     height: 70,
          //                     width: 110,
          //                     decoration: BoxDecoration(
          //                       color: Colors.lightBlue,
          //                       borderRadius: BorderRadius.circular(16.0)
          //                     ),
          //                     child: Padding(
          //                       padding: const EdgeInsets.only(left: 8.0),
          //                       child: Column(
          //                         mainAxisAlignment: MainAxisAlignment.center,
          //                         crossAxisAlignment: CrossAxisAlignment.start,
          //                         children: const [
          //                           Text("TOP RANK", style: TextStyle(color: Colors.white,fontSize: 16)),
          //                           Text("-", style: TextStyle(color: Colors.white,fontSize: 14, fontWeight: FontWeight.bold))
          //                         ],
          //                       ),
          //                     ),
          //                   ),
          //                 ],
          //               ),
          //             )
          //           ],
          //         ),
          //       ),
          //     );
          //   },)
          // ),
      //     SliverList(delegate: SliverChildBuilderDelegate((context, index){
      //       return ListView.builder(
      //         primary: false,
      //         itemCount: 10,
      //         shrinkWrap: true,
      //         itemBuilder: (context, index) => Card(child: ListTile(title: Text('data'),)),
      //       );
      //     }))
      //     // SliverToBoxAdapter(
      //     //   child: ListView.builder(
      //     //     // primary: false,
      //     //     itemCount: 10,
      //     //     shrinkWrap: true,
      //     //     itemBuilder: (context, index) => Card(child: ListTile(title: Text('data'),)),
      //     //   ),
      //     // )
      //   ],
      // )




      // CustomScrollView(
      //   slivers: <Widget>[
      //     SliverAppBar(
      //       leading: Icon(Icons.menu),
      //       expandedHeight: 250.0,
      //       pinned: true,
      //       snap: false,
      //       floating: false,
            // flexibleSpace: FlexibleSpaceBar(
            //   title: Text('Goa', textScaleFactor: 1),
            //   background: Image.network('https://picsum.photos/400/300',fit: BoxFit.fill,),
            // ),
      //       bottom: AppBar(
      //         title: Container(
      //           height: 45,
      //           child: TextField(
      //             decoration: InputDecoration(
      //               border: OutlineInputBorder(),
      //               hintText: 'Enter a search term'
      //             ),
      //           )
      //         ),
      //       ),
      //     ),
      //     SliverList(
      //       delegate: SliverChildBuilderDelegate((context, index){
      //         return ListTile(
      //           leading: Container(
      //             padding: EdgeInsets.all(8),
      //             width: 100,
      //             child: Placeholder()
      //           ),
      //           title: Text('Place ${index + 1}', textScaleFactor: 2),
      //         );
      //       },
      //       childCount: 20,
      //       )
      //     )
      //   ],
      // )