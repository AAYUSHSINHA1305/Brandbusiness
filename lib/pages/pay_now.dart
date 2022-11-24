import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PayNow extends StatefulWidget {
  const PayNow({super.key});

  @override
  State<PayNow> createState() => _PayNowState();
}

class _PayNowState extends State<PayNow> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Drawer(
              child: ListView(
            children: [
              Column(
                children: [
                  MaterialButton(
                    onPressed: () {},
                    child: Text("Home"),
                  ),
                  ExpansionTile(
                      title: Column(
                    children: [
                      Text('Company'),
                      Text('About Us'),
                    ],
                  )),
                  ExpansionTile(
                      title: Column(
                    children: [
                      Text('Product & Services'),
                      Text('Website Designing'),
                      Text('Web Devlopment'),
                      Text('Android & ios Devlopment'),
                    ],
                  )),

                ],
              )
            ],
          )),
          Image.asset("assets/icon-3.png"),
          Stack(
            children: [
              Image.asset("assets/about_us_banner.jpg"),
              Text("Pay Now"),
            ],
          )
        ],
      ),
    ));
  }
}
