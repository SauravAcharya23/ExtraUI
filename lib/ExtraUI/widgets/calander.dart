import 'package:flutter/material.dart';

class CalenderWidget extends StatelessWidget {
  const CalenderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFFF2F2F2),
        borderRadius: BorderRadius.circular(6.0)
      ),
      child: Wrap(
        children: 
        [
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Container(
              height: 40,
              width: 45,
              margin: const EdgeInsets.only(right: 8),
              // color: Colors.pink,
              child: const Align(alignment: Alignment.center, child: Text("1D",style: TextStyle(fontWeight: FontWeight.bold),)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Container(
              height: 40,
              width: 45,
              margin: const EdgeInsets.only(right: 8),
              // color: Colors.pink,
              child: const Align(alignment: Alignment.center, child: Text("1W",style: TextStyle(fontWeight: FontWeight.bold),)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Container(
              height: 35,
              width: 45,
              decoration: BoxDecoration(
                color: const Color(0xFFFFEA2E),
                borderRadius: BorderRadius.circular(7.0),
                boxShadow: const [BoxShadow(color: Color(0xFF040404), blurRadius: 2.0)]
              ),
              margin: const EdgeInsets.only(right: 8),
              child: const Align(alignment: Alignment.center, child: Text("1M",style: TextStyle(fontWeight: FontWeight.bold),)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Container(
              height: 40,
              width: 45,
              margin: const EdgeInsets.only(right: 8),
              // color: Colors.pink,
              child: const Align(alignment: Alignment.center, child: Text("3M",style: TextStyle(fontWeight: FontWeight.bold),)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Container(
              height: 40,
              width: 45,
              margin: const EdgeInsets.only(right: 8),
              // color: Colors.pink,
              child: const Align(alignment: Alignment.center, child: Text("6M",style: TextStyle(fontWeight: FontWeight.bold),)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Container(
              height: 40,
              width: 45,
              margin: const EdgeInsets.only(right: 8),
              // color: Colors.pink,
              child: const Align(alignment: Alignment.center, child: Text("1Y",style: TextStyle(fontWeight: FontWeight.bold),)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Container(
              height: 40,
              width: 45,
              margin: const EdgeInsets.only(right: 8),
              // color: Colors.pink,
              child: const Align(alignment: Alignment.center, child: Text("5Y",style: TextStyle(fontWeight: FontWeight.bold),)),
            ),
          )
        ]
      ),
    );
  }
}