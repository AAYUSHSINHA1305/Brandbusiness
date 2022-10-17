import 'package:flutter/material.dart';

class DigMarket extends StatefulWidget {
  const DigMarket({super.key});

  @override
  State<DigMarket> createState() => _DigMarketState();
}

class _DigMarketState extends State<DigMarket> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Image.asset(
              "assets/logo.png",
              height: size.height * 0.1,
            ),
            Image.asset("assets/blogbnr (1).jpg"),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "We Are The Best Website Designing Company In Auckland",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
