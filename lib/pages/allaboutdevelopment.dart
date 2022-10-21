import 'package:brandbusiness/util/hex_color.dart';
import 'package:flutter/material.dart';

class Allaboutd extends StatefulWidget {
  const Allaboutd({super.key});

  @override
  State<Allaboutd> createState() => _AllaboutdState();
}

class _AllaboutdState extends State<Allaboutd> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.location_on,
            color: greencol,
          ),
          backgroundColor: blueclor,
          title: Text(
            "Auckland, New Zealand 0612",
            style: TextStyle(
              fontSize: 12,
            ),
          ),
          actions: [
            IntrinsicHeight(
              child: Row(
                children: [
                  VerticalDivider(
                    color: greencol,
                    thickness: 2,
                  ),
                  Icon(
                    Icons.call,
                    color: greencol,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Text(
                      "+64 21 106 8521",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Row(
              children: [Image.asset("assets/logo (1).png"), Container()],
            )
          ],
        ),
      ),
    );
  }
}
