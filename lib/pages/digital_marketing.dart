import 'package:brandbusiness/util/hex_color.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DigitalMarketing extends StatefulWidget {
  const DigitalMarketing({super.key});

  @override
  State<DigitalMarketing> createState() => _DigitalMarketingState();
}

class _DigitalMarketingState extends State<DigitalMarketing> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/logo.png",
                    height: size.height * 0.1,
                  ),
                  Image.asset(
                    "assets/blogbnr (1).jpg",
                  ),
                  SizedBox(
                    height: size.height * 0.06,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Text(
                      "A website provides you the fundamental base on which you can get an online presence. However, there are thousands of other competitors trying hard to get more traffic. Digital marketing enables you to promote your products or services on other digital channels to attract more visitors who can be your potential leads.",
                      style: TextStyle(
                        color: stextclor,
                        height: 1.5,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Text(
                      "Digital marketing strategies eventually increase your website ranking and help you to get more click-through rate. Our digital marketers plan surefire digital marketing strategies to achieve the highest ROI.",
                      style: TextStyle(
                        color: stextclor,
                        height: 2,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                    ),
                    child: Text(
                      "Services we offer",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: stextclor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 30,
                            ),
                            child: Text(
                              '1.',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: stextclor,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 06,
                          ),
                          Text(
                            "SEO",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: stextclor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 30,
                            ),
                            child: Text(
                              '2.',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: stextclor,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 06,
                          ),
                          Text(
                            "SMM",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: stextclor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 30,
                            ),
                            child: Text(
                              '3.',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: stextclor,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 06,
                          ),
                          Text(
                            "PPC",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: stextclor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 30,
                            ),
                            child: Text(
                              '4.',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: stextclor,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 06,
                          ),
                          Text(
                            "ORM",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: stextclor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 30,
                            ),
                            child: Text(
                              '5.',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: stextclor,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 05,
                          ),
                          Text(
                            "Email Marketing",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: stextclor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 30,
                            ),
                            child: Text(
                              '6.',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: stextclor,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 06,
                          ),
                          Text(
                            "Content Marketing",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: stextclor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    "assets/Digital-Marketing.png",
                  ),
                  Stack(
                    children: [
                      Container(
                        height: size.height,
                      ),
                      Image.asset(
                        'assets/footbg.jpg',
                        height: size.height * 1.5,
                        fit: BoxFit.cover,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 270,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 10,
                            ),
                            child: const Text(
                              "VISIT US",
                              style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                                color: blueclor,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            child: Text(
                              "Newzealand Office",
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            child: Text(
                              "98 Tiverton Rd, New Windsor, Auckland 0600",
                              style: TextStyle(
                                color: blueclor,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            child: Text(
                              "Australia Office",
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            child: Text(
                              "Unit 18 1 Browne Pde, Warwick Farm, NSW, 2170",
                              style: TextStyle(
                                fontSize: 15,
                                color: blueclor,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 5,
                            ),
                            child: Text(
                              "Canada Office",
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            child: Text(
                              "115 Bellchase Trail, Brampton, ON L6P 3L3",
                              style: TextStyle(
                                fontSize: 15,
                                color: blueclor,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            child: Text(
                              "USA Office",
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            child: Text(
                              "316 Quince Ave Galloway, NJ 08205",
                              style: TextStyle(
                                fontSize: 15,
                                color: blueclor,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            child: Text(
                              "London Office",
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            child: Text(
                              "27 Old Gloucester Street LONDON WC1N 3AX \n UNITED  KINGDOM",
                              style: TextStyle(
                                fontSize: 15,
                                color: blueclor,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            child: Text(
                              "COMPANY NUMBER: 13953026",
                              style: TextStyle(
                                fontSize: 15,
                                color: blueclor,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.facebook_outlined,
                                  size: 42,
                                  color: blueclor,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Image.asset(
                                  'assets/instagram.png',
                                  color: blueclor,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Image.asset(
                                  'assets/linkedin (1).png',
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Image.asset(
                                  'assets/twitter (1).png',
                                  color: blueclor,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15.0),
                            child: Text(
                              "CONTACT US",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 26,
                                  color: blueclor),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            child: RichText(
                              text: TextSpan(
                                text: 'New Zealand : ',
                                style: TextStyle(
                                  fontSize: 19,
                                  color: Colors.black,
                                ),
                                children: const <TextSpan>[
                                  TextSpan(
                                    text: '+64 9 889 4211',
                                    style: TextStyle(
                                      fontSize: 19,
                                      color: blueclor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            child: RichText(
                              text: TextSpan(
                                text: 'Australia : : ',
                                style: TextStyle(
                                  fontSize: 19,
                                  color: Colors.black,
                                ),
                                children: const <TextSpan>[
                                  TextSpan(
                                    text: '+61 28006 4422',
                                    style: TextStyle(
                                      fontSize: 19,
                                      color: blueclor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            child: RichText(
                              text: TextSpan(
                                text: 'USA & Canada  : ',
                                style: TextStyle(
                                  fontSize: 19,
                                  color: Colors.black,
                                ),
                                children: const <TextSpan>[
                                  TextSpan(
                                    text: ' +1 8148220436',
                                    style: TextStyle(
                                      fontSize: 19,
                                      color: blueclor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            child: RichText(
                              text: TextSpan(
                                text: 'UK  : ',
                                style: TextStyle(
                                  fontSize: 19,
                                  color: Colors.black,
                                ),
                                children: const <TextSpan>[
                                  TextSpan(
                                    text: '+44 20 3239 4243',
                                    style: TextStyle(
                                      fontSize: 19,
                                      color: blueclor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            child: Text(
                              "support@webmaniacs.co.nz",
                              style: TextStyle(
                                fontSize: 19,
                                color: btextcolor,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            child: Text(
                              "PAYMENT",
                              style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                                color: blueclor,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            child: Image.asset("assets/payment.png"),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            child: Text(
                              "Our Delivery Partner",
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            child: Text(
                              "Proclivity Digitech",
                              style: TextStyle(
                                fontSize: 15,
                                color: blueclor,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Divider(
                              height: 1,
                              thickness: 1,
                              color: btextcolor,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            child: Text(
                              "Copyright 2021 | Web Maniacs Ltd . All Rights Reserved.",
                              style: TextStyle(
                                fontSize: 15,
                                color: blueclor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              right: 10,
              bottom: 10,
              child: Row(
                children: [
                  Text(
                    "How can I Help you?",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.lightGreen),
                    child: IconButton(
                      iconSize: 30,
                      highlightColor: Colors.black,
                      onPressed: () {},
                      icon: FaIcon(FontAwesomeIcons
                          .whatsapp), // it's not available in flutter. we need to add it from flaticon or fontawesome
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
