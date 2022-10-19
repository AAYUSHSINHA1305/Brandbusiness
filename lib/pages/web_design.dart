import 'package:brandbusiness/util/hex_color.dart';
import 'package:flutter/material.dart';

class WebDesign extends StatefulWidget {
  const WebDesign({super.key});

  @override
  State<WebDesign> createState() => _WebDesignState();
}

class _WebDesignState extends State<WebDesign> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(
                    "assets/logo.png",
                    height: size.height * 0.1,
                  ),
                  Stack(
                    children: [
                      Image.asset(
                        "assets/blogbnr.jpg",
                      ),
                      Positioned(
                        top: 40,
                        left: 20,
                        child: Text(
                          "Web Application Development",
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Text(
                      "Web-Mechanics have a professionally trained, experienced and certified team to manage and provide best in class service in the digital marketing field. We have specialists for web application development and they can easily help you out professionally and efficiently. Our main motto is to help the clients develop a scalable and secure custom web application that can help them to take their business to the next level.",
                      style: TextStyle(
                        fontSize: 15,
                        color: stextcolor,
                        height: 1.5,
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
                      "Our company is highly renowned in the business industry to provide integrated custom web application development services to our customers at an affordable price. Not only that we also provide all the relevant information to them on demand. Our skilled and experienced team of web application designers and developers takes care of everything. We assure you that our company will make the best efforts to fulfil and develop a web application that will help you in generating more business value.",
                      style: TextStyle(
                        fontSize: 15,
                        color: stextcolor,
                        height: 1.5,
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
                      "Our team can also help you with anything else that you need such as maintenance support, application deployment and much more. You don't have to worry about anything because we follow strict procedures and the latest industry-standard custom web application development models such as agile development, rapid application development, iterative development. This helps us to provide a fast and efficient high standard of service.",
                      style: TextStyle(
                        fontSize: 15,
                        color: stextcolor,
                        height: 1.5,
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
                      "So if you need help from a professionally trained, experienced and highly qualified team for web application development then remember, the team of Web Maniacs are always there to help you out 24/7.",
                      style: TextStyle(
                        fontSize: 15,
                        color: stextcolor,
                        height: 1.5,
                      ),
                    ),
                  ),
                  Image.asset(
                    "assets/Web-Application-Development.png",
                  ),
                  SizedBox(
                    height: 20,
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
                      icon: Icon(Icons.whatsapp),
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
