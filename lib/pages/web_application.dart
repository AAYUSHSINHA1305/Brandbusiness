import 'package:brandbusiness/util/hex_color.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Webapplication extends StatefulWidget {
  const Webapplication({super.key});

  @override
  State<Webapplication> createState() => _WebapplicationState();
}

class _WebapplicationState extends State<Webapplication> {
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
                  Stack(
                    children: [
                      Image.asset(
                        "assets/blogbnr (1).jpg",
                      ),
                      Positioned(
                        top: 40,
                        left: 20,
                        child: Text(
                          "Website Designing",
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "We Are The Best Website Designing Company In Auckland",
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
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
                      "As a new business owner, you need a website to showcase your products and services to your targeted audience. A website can have a long-lasting impact on your business. Your website should be effectively designed to make the customers stay and find the solution. The display of your website should adjust based on the pixel width of the website upon which it's being viewed. Research states that more than 60% of users say they won't recommend a business with a poorly designed website. This stat indicated that your website should have an attractive and responsive design.",
                      style: TextStyle(
                        color: stextcolor,
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
                      "Are you looking for the best web designing services in the town? Then we've got your back! At Web Maniacs, we are the best website designing company in Auckland where we have a team of in-house experts who are committed to delivering high-quality website designs to our clients globally.",
                      style: TextStyle(
                        color: stextcolor,
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
                      "How Do We Work?",
                      style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
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
                      "With our top-notch web designing services, you can:",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: stextclor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 50,
                    ),
                    child: Text(
                      "Save money on offline marketingEstablish your online presenceEducate your customers about your products/services Boost productivity Enhance your online reputation Improve customer service",
                      style: TextStyle(
                        color: stextcolor,
                        fontSize: 15,
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
                      "How Do We Work?",
                      style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
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
                      "Gathering Relevant Information",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Text(
                      "As a leading web designing company in Auckland, we prefer to gather all the relevant and crucial information before designing the website. Our experts will understand your business' demands and perform a competitor analysis to get the crucial information.",
                      style: TextStyle(
                        color: stextcolor,
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
                      "Implementing The Right Web Designing Strategy",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
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
                      "We have a team of experienced professionals who will plan and execute the right web development strategies to attract more customers to your business.",
                      style: TextStyle(
                        color: stextcolor,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Image.asset(
                    "assets/Web-Design-Development-1.png",
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Text(
                      "Creating Attractive Design For Your Website",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
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
                      "Now here comes the challenging tasks. Our experts are dedicated to delivering the best website design which is a combination of decency and attractiveness.",
                      style: TextStyle(
                        color: stextcolor,
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
                      "Improving The Technical Aspects Of Your Website",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
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
                      "Our experts take care of all the technical aspects of your website, such as website navigation, coding, overall layout, etc. We are the best web designing company in Auckland and we focus to satisfy your business needs.",
                      style: TextStyle(
                        color: stextcolor,
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
                      "Modifying As Per Your Requests",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
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
                      "Before launching your website, we will take quick feedback from you to modify any changes on the website design or overall layout.",
                      style: TextStyle(
                        color: stextcolor,
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
                      "Launching Your Website",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
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
                      "Once you're satisfied with our website design, we move towards launching your masterpiece - which will help you attract your targeted audience. Not only the designing, but we will also take care of the technical aspects of your website regularly after a successful launch.",
                      style: TextStyle(
                        color: stextcolor,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Text(
                      "That said, we are a one-stop-shop for your web designing process. We take care of every aspect of your website to satisfy your needs and bring more customers.",
                      style: TextStyle(
                        color: stextcolor,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Text(
                      "Our Services",
                      style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
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
                      "Our web designing services include:",
                      style: TextStyle(
                        color: stextcolor,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 50,
                    ),
                    child: Text(
                      "Logo Design - An attractive logo is a key to attracting customers.",
                      style: TextStyle(
                        color: stextcolor,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 50,
                    ),
                    child: Text(
                      "Mobile-Friendly - Having a mobile-friendly website is crucial to enhance the users' experience.",
                      style: TextStyle(
                        color: stextcolor,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 50,
                    ),
                    child: Text(
                      "SEO-Friendly - We will optimize the on-page and off-page SEO of your website.",
                      style: TextStyle(
                        color: stextcolor,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 50,
                    ),
                    child: Text(
                      "Live Chat - We will provide a live chat feature to make it more convenient for visitors to chat with you.",
                      style: TextStyle(
                        color: stextcolor,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 50,
                    ),
                    child: Text(
                      "Secured - We ensure that your website is secured from hacking attacks.",
                      style: TextStyle(
                        color: stextcolor,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Text(
                      "Why Choose Us?",
                      style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
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
                      "In the past, we have delivered attractive and responsive designs to our clients globally. Apart from web designing, we offer top-notch digital marketing, including SEO, SMO, PPC, and content marketing services.",
                      style: TextStyle(
                        color: stextcolor,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Text(
                      "With our high-quality web designing services, you can:",
                      style: TextStyle(
                        color: stextcolor,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 50,
                    ),
                    child: Text(
                      "Attract more customers\n Rank higher in search engines\n Minimize your website's bounce rate\n Create a strong first impression of your website.",
                      style: TextStyle(
                        color: stextcolor,
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
                      "Contact our experts and they will design the best website for your business which will generate high-quality results in the long run. Hire the leading web designing company in Auckland today!",
                      style: TextStyle(
                        color: stextcolor,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // Container
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
                      icon: FaIcon(FontAwesomeIcons.whatsapp),
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
