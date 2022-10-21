import 'package:brandbusiness/pages/allaboutdevelopment.dart';
import 'package:brandbusiness/pages/digital_marketing.dart';
import 'package:brandbusiness/pages/quote.dart';
import 'package:brandbusiness/pages/web_application.dart';
import 'package:brandbusiness/pages/web_design.dart';
import 'package:brandbusiness/util/hex_color.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool businessconsuliting = false;
  bool businessanalytics = false;
  bool marketingresarch = false;
  bool brandingsupport = false;
  bool mediamarketing = false;
  int activeIndex = 0;

  final sliderTextList = [
    Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        children: const [
          Text(
            "Offering tailor made solutions is what you can rely on the highly skilled team of this company. Great and professional attitude and they even completed the project on time.",
            style: TextStyle(
              fontSize: 18,
              height: 2,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            "Rochaile",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        children: const [
          Text(
            "Wanted to get a user friendly website and I proud to say that the team of Web Maniacs helped me in getting that.",
            style: TextStyle(
              fontSize: 18,
              height: 2,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            "Andy",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        children: const [
          Text(
            "would like to thank the team of web manaics for developing my company's website and helping me to rank on the top page of google.",
            style: TextStyle(
              fontSize: 18,
              height: 2,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            "Micheal",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        children: const [
          Text(
            "Great work and professional attitude. Got quality web application development service from the experts of this company.",
            style: TextStyle(
              fontSize: 18,
              height: 2,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            "Suzi",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        children: const [
          Text(
            "Happy to be connected with the team of web maniacs. I was impressed by their service. Thanks for helping my company to rank on the top page of google.",
            style: TextStyle(
              fontSize: 18,
              height: 2,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            "Zidam",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
    ),
    SizedBox(
      height: 25,
    ),
    Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        children: const [
          Text(
            "I'm extremely satisfied with professional website development services of the team of Web Maniacs. Looking forward to choose your wide range of digital marketing solution very soon, thanks for your great service!.",
            style: TextStyle(
              fontSize: 18,
              height: 2,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            "Cyril merry",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
    ),
    Column(
      children: const [
        Text(
          "The dynamic team of Web Maniacs is excellent at offering world-class website design &amp; app development services to small and mid-range companies. Your highly-professional service is always recommended, availed at extremely pocket-saving rates. Thanks Web Maniacs!",
          style: TextStyle(
            fontSize: 18,
            height: 2,
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Text(
          "Vincent Valentine",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ],
    ),
    const SizedBox(
      height: 25,
    ),
    Column(
      children: const [
        Text(
          "The team of Web Maniacs excels in offering wide range of software development help to businesses in New Zealand. My development team was overwhelmed to seek your professional assistance in lead generation. Thanks to their team-work!",
          style: TextStyle(
            fontSize: 18,
            height: 2,
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Text(
          "Archil Wiles",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(
          height: 25,
        ),
      ],
    ),
    Column(
      children: const [
        Text(
          "The team of Web Maniacs excels in offering wide range of software development help to businesses in New Zealand. My development team was overwhelmed to seek your professional assistance in lead generation. Thanks to their team-work!",
          style: TextStyle(
            fontSize: 18,
            height: 2,
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Text(
          "Ben Sealey",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(
          height: 25,
        ),
      ],
    ),
    Column(
      children: const [
        Text(
          "I'm overjoyed with your superb online marketing services, and your marketing experts guided me steps to retain clients and gain popularity in today's digital world. The team of Web Maniacs is extremely professional and offered my company industry-standard solution at affordable charges. Thanks Web Maniacs!",
          style: TextStyle(
            fontSize: 18,
            height: 2,
          ),
        ),
        Text(
          "George Carew",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ],
    ),
    Column(
      children: const [
        Text(
          "I'm highly-satisfied with your professional application development services, offered to my company at extremely pocket-saving charges. Now, I'm looking forward to explore your other services and score a good rank in the search engine. Thanks to the entire team of Web Maniacs for the best help!",
          style: TextStyle(
            fontSize: 18,
            height: 2,
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Text(
          "Cyril Christiani",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ],
    ),
    Column(
      children: const [
        Text(
          "The team of Web Maniacs excels in offering customized software design & development help to businesses. From lead generation to digital marketing and wifi marketing, your experts are qualified to offer exact solution at reasonable charges. Thanks Web Maniacs!",
          style: TextStyle(
            fontSize: 18,
            height: 2,
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Text(
          "Rolph Grant",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ],
    ),
    Column(
      children: const [
        Text(
          "The dynamic team of Web Maniacs has helped my small-size company to get a user-oriented website and promote my services in social media profiles. Their highly- professionalism encouraged me to grow as a mid-range company with great client retention potentials. Thanks to Web Maniacs for the help!",
          style: TextStyle(
            fontSize: 18,
            height: 2,
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Text(
          "Leslie Hylton",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ],
    ),
    Column(
      children: const [
        Text(
          "From digital marketing to website customization and wifi marketing, the team of Web Maniacs excels in offering wide range of professional support to world-wide companies. I'm highly-impressed with their customer-oriented services and professionalism to work, and also offered me customization at pocket-saving rates. Thanks!",
          style: TextStyle(
            fontSize: 18,
            height: 2,
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Text(
          " James Neblett",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ],
    ),
    Column(
      children: const [
        Text(
          "I'm overjoyed to be connected with the talented team of Web Maniacs. Their digital marketing and wifi marketing solution is extremely promising and guided me to attain quick success in company's growth. Thanks Web Maniacs for helping me to get ranked in search engines!",
          style: TextStyle(
            fontSize: 18,
            height: 2,
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Text(
          "  Kenneth Eishart",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final urlImages = <Widget>[
      Image.asset(
        'assets/first.jpg',
        width: size.width,
        fit: BoxFit.fill,
      ),
      Image.asset(
        'assets/2 (1).jpg',
        width: size.width,
        fit: BoxFit.fill,
      ),
      Image.asset(
        'assets/3 (1).jpg',
        width: size.width,
        fit: BoxFit.fill,
      ),
      Image.asset(
        'assets/PBT (1).jpg',
        width: size.width,
        fit: BoxFit.fill,
      ),
    ];

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          CarouselSlider(
                            items: urlImages,
                            options: CarouselOptions(
                              height: size.height * 0.5,
                              aspectRatio: 16 / 9,
                              viewportFraction: 1.0,
                              initialPage: 0,
                              enableInfiniteScroll: true,
                              reverse: false,
                              autoPlay: true,
                              autoPlayInterval: const Duration(seconds: 3),
                              autoPlayAnimationDuration:
                                  const Duration(milliseconds: 800),
                              autoPlayCurve: Curves.fastOutSlowIn,
                              enlargeCenterPage: true,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  activeIndex = index;
                                });
                              },
                              scrollDirection: Axis.horizontal,
                            ),
                          ),

                          // add the animated dots indicator heare
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: AnimatedSmoothIndicator(
                              activeIndex: activeIndex,
                              count: urlImages.length,
                            ),
                          ),
                          Positioned(
                            bottom: 275,
                            left: 20,
                            child: Image.asset(
                              "assets/logo.png",
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 80.0),
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.5,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 118, 153, 182),
                                      offset: Offset(
                                        5.0,
                                        5.0,
                                      ),
                                      blurRadius: 10.0,
                                      spreadRadius: 1.0,
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                        minRadius: 16.0,
                                        backgroundColor: blueclor,
                                        child: Icon(
                                          Icons.settings,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 7,
                                      ),
                                      Text(
                                        "Featured Services",
                                        style: TextStyle(
                                          color: btextcolor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "We Provide Additional Services That will Grow Your Business",
                          style: TextStyle(
                            fontSize: 30,
                            color: blueclor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "Custom Application Develoment,MicroShoft Dynamics NVA,App Maintenance & Support, Taxi Booking App,Technologies ,React,Nativ Development,Nativiv App Development, Hybrd App Development,Blockchine App Development,Laraval App Development,PHP Web Develoment,Application Migration,UI & UX Design,Staff Augmentation, Enterprise Solution  Microshoft Dynamics CRM, Microsoft Dynamic 365 BC, SharePoint & 0365, Food Delivery App Fantasy Sports App, Music Streaming App, WoodPress Develoment, Paython Develoment,ASP.NET Develoment iPhone, App Develoment.",
                          style: TextStyle(
                            color: stextcolor,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                          height: size.height * 0.5,
                          width: size.width,
                          decoration: BoxDecoration(
                            color: cardcolorp,
                            borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(30),
                              right: Radius.circular(30),
                            ),
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(
                              children: [
                                Image.asset("assets/ftr1.png"),
                                const Text(
                                  "Web Design & Development",
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w900,
                                    color: blueclor,
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "You Can trust our experts for desigining and development an user friendly website for your company.",
                                  style: TextStyle(
                                    color: stextclor,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                          height: size.height * 0.5,
                          width: size.width,
                          decoration: BoxDecoration(
                            color: cardcolorg,
                            borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(30),
                              right: Radius.circular(30),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Column(
                                children: [
                                  Image.asset("assets/ftr1.png"),
                                  const Text(
                                    "Web Application Development",
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w900,
                                      color: Color.fromARGB(255, 17, 51, 78),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0),
                                    child: Text(
                                      "We only use the best platform to develop web application such as AngularJS, ASP.NET, Ruby on Rails(ROR), Symfony, Laravel, Node,React.",
                                      style: TextStyle(
                                        color: stextclor,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Circle button -1
                              Positioned(
                                top: 35,
                                left: 155,
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.add_circle_outline,
                                    size: 60,
                                  ),
                                  color: btextcolor,
                                  onPressed: () {
                                    Get.to(
                                      () => Webapplication(),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                          height: size.height * 0.45,
                          width: size.width,
                          decoration: BoxDecoration(
                            color: cardcolorp,
                            borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(30),
                              right: Radius.circular(30),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Column(
                                children: [
                                  Image.asset("assets/ftr1.png"),
                                  const Text(
                                    "Digital Marketing",
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w900,
                                      color: Color.fromARGB(255, 17, 51, 78),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15.0),
                                    child: Text(
                                      "We can easily help you in promoting your brand and getting connected with your targeted customers.",
                                      style: TextStyle(
                                        color: stextclor,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // circal button -2
                              Positioned(
                                top: 35,
                                left: 155,
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.add_circle_outline,
                                    size: 60,
                                  ),
                                  color: btextcolor,
                                  onPressed: () {
                                    Get.to(
                                      () => WebDesign(),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      //  circle button -3
                      Center(
                        child: IconButton(
                          icon: const Icon(
                            Icons.add_circle_outline,
                            size: 60,
                          ),
                          color: btextcolor,
                          onPressed: () {
                            Get.to(
                              () => DigitalMarketing(),
                            );
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.5,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 118, 153, 182),
                                      offset: Offset(
                                        5.0,
                                        5.0,
                                      ),
                                      blurRadius: 10.0,
                                      spreadRadius: 1.0,
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                        minRadius: 16.0,
                                        backgroundColor: blueclor,
                                        child: Icon(
                                          Icons.person,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        "About Company",
                                        style: TextStyle(
                                          color: btextcolor,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "We Solve Better Digital Marketing Solution",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            color: blueclor,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "High standard of solution at the best price in the industry you will get by working with us",
                          style: TextStyle(
                            fontSize: 15,
                            color: stextcolor,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          children: const [
                            CircleAvatar(
                              backgroundColor: circleAvcolr,
                              child: Text(
                                "1",
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "A great value for your business",
                              style: TextStyle(
                                color: circleAvcolr,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          children: const [
                            CircleAvatar(
                              backgroundColor: circleAvcolr,
                              child: Text(
                                "2",
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Achieve online success",
                              style: TextStyle(
                                color: circleAvcolr,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          children: const [
                            CircleAvatar(
                              backgroundColor: circleAvcolr,
                              child: Text(
                                "3",
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Transform your indeas",
                              style: TextStyle(
                                color: circleAvcolr,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Image.asset(
                          "assets/abt.png",
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 80.0),
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.5,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 118, 153, 182),
                                      offset: Offset(
                                        5.0,
                                        5.0,
                                      ),
                                      blurRadius: 10.0,
                                      spreadRadius: 1.0,
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Stack(
                                        children: const [
                                          CircleAvatar(
                                            minRadius: 16.0,
                                            backgroundColor: blueclor,
                                            child: Icon(
                                              Icons.settings,
                                              color: Colors.white,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        width: 7,
                                      ),
                                      Text(
                                        "Your Mission",
                                        style: TextStyle(
                                          color: btextcolor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "We Offer Complete Range of Features",
                          style: TextStyle(
                            fontSize: 30,
                            color: blueclor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "At Web Maniacs, we excel in offering a wide range of industry-standard services, which are required to take businesses to the next level.",
                          style: TextStyle(
                            color: stextcolor,
                            fontSize: 15,
                            height: 2,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      ExpansionTile(
                        title: const Text("Business Consulting"),
                        children: [
                          const SizedBox(
                            height: 25,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Image.asset(
                              "assets/tab-pic.jpg",
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          const Text(
                            "Business Consulting",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                              color: blueclor,
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              "The team of Web Maniacs helps to provide complete web consultation services to every approaching client. Our industry-standard consulting services comprise of website development, application development, graphic designing, e-commerce platforms customization, offshore social media marketing website development, digital marketing & SEO.",
                              style: TextStyle(
                                color: stextcolor,
                                fontSize: 18,
                                height: 2,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                "assets/tick.jpg",
                                height: 40,
                                width: 40,
                              ),
                              Expanded(
                                child: Text(
                                  "Through Market Research To Retain Prospective Customers",
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500,
                                    color: blueclor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12.0),
                            child: Text(
                              "Our dynamic team of experts is certified to conduct eventual market research and understand what’s preferred in the current market. We’ve years of experience in related genres and well-versed to generate clients, increase as well as retain several prospective customers, and guide you to attain success at the earliest. And also, we will assure your peace of mind and guaranteed outcome.",
                              style: TextStyle(
                                color: stextcolor,
                                fontSize: 15,
                                height: 2,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                      ExpansionTile(
                        title: const Text("Business Analytics"),
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Image.asset(
                              "assets/Business-Analytics.png",
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          const Text(
                            "Business Analytics",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                              color: blueclor,
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12.0),
                            child: Text(
                              "At Web Maniacs, you can meet your specific information required and make a smart choice with our world-class services to visualize and shared information collected across multiple sources. The team of Web Maniacs helps to facilitate data-driven decision-making with interactive and rich info visualizations, and incorporate information to optimize steps and accelerate performance. From full-time business support to online marketing and generation of clients, with our experts, you can get whatever is required to achieve ultimate success in your company.",
                              style: TextStyle(
                                color: stextcolor,
                                fontSize: 18,
                                height: 2,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              "Transforming Data Into Insight & Action",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                                color: blueclor,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                "assets/tick.jpg",
                                height: 40,
                                width: 40,
                              ),
                              const Text(
                                "Human Resource Analytics",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 131, 136, 139),
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset(
                                "assets/tick.jpg",
                                height: 40,
                                width: 40,
                              ),
                              const Text(
                                "Marketing Analytics",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 131, 136, 139),
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset(
                                "assets/tick.jpg",
                                height: 40,
                                width: 40,
                              ),
                              const Text(
                                "Finance Analytics",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 131, 136, 139),
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset(
                                "assets/tick.jpg",
                                height: 40,
                                width: 40,
                              ),
                              const Text(
                                "Sales Analytics",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 131, 136, 139),
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset(
                                "assets/tick.jpg",
                                height: 40,
                                width: 40,
                              ),
                              const Text(
                                "Customer Support Analytics",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 131, 136, 139),
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset(
                                "assets/tick.jpg",
                                height: 40,
                                width: 40,
                              ),
                              const Text(
                                "Operations Analytics",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 131, 136, 139),
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                        ],
                      ),
                      ExpansionTile(
                          title: const Text("Marketing Research"),
                          children: [
                            Image.asset(
                              "assets/Marketing-Research.png",
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            const Text(
                              "Marketing Research",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 40, 140, 221),
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            const Text(
                              "Our industry-standard marketing research solutions can meet all your survey needs and possibilities to retain clients. From brand tracking to customer approach and concept evaluation, our certified experts can cover you with widespread marketing research services, which are scale to meet your needs. You can select a package or customize your plans to conduct your industry-specific marketing research.",
                              style: TextStyle(
                                color: Color.fromARGB(255, 131, 136, 139),
                                fontSize: 18,
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            const Text(
                              "Leading Brands Prefer Our Widespread Marketing Research Support",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 40, 140, 221),
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            const Text(
                              "To customize a package of products and services to satisfy your individual needs, including –",
                              style: TextStyle(
                                color: Color.fromARGB(255, 131, 136, 139),
                                fontSize: 18,
                              ),
                            ),
                          ]),
                      ExpansionTile(
                        title: const Text("Branding Support"),
                        children: [
                          Image.asset(
                            "assets/Branding-Support.png",
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          const Text(
                            "Branding Support",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 40, 140, 221),
                            ),
                          ),
                          const Text(
                            "If you want to create your online presence and authentically generate clients, our marketing experts are always ready to offer the best help. Web Maniacs offers a wide range of consulting, coaching, and support of brands that helps to manifest your clients about your world-class solutions. By diving into your core messaging, objectives, and prospective clients, our experts will give you ample options for branding development.",
                            style: TextStyle(
                              color: Color.fromARGB(255, 131, 136, 139),
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          const Text(
                            "Empowering Your Brands & Business Into The Next Level",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 40, 140, 221),
                            ),
                          ),
                        ],
                      ),
                      ExpansionTile(
                        title: const Text("Media Marketing"),
                        children: [
                          Image.asset("assets/Media-Marketing.png"),
                          const SizedBox(
                            height: 25,
                          ),
                          const Text(
                            "Media Marketing",
                            style: TextStyle(color: Colors.blue, fontSize: 22),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          const Text(
                            "Web Maniacs is well-established as a versatile online marketing agency, which never relies upon mirrors and smoke to attract new customers. Our dynamic team of experts aims at search engine optimization and upgraded marketing skills to attract new clients to your official website. We aren’t a stagnant company, and so explored widespread industries to offer exact solutions to all our clients. The team of Web Maniacs has the experience and experts to create a custom website and incorporate multiple online marketing services to assist all-size companies in any industry.",
                            style: TextStyle(
                                color: Color.fromARGB(255, 64, 77, 88)),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          const Text(
                            "Grow Your Client Base With Our Data-Driven & Targeted Strategies",
                            style: TextStyle(color: Colors.blue, fontSize: 22),
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.check_circle_outline,
                                color: Color.fromARGB(255, 196, 178, 11),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "Technical SEO",
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Color.fromARGB(
                                    255,
                                    64,
                                    77,
                                    88,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.check_circle_outline,
                                color: Color.fromARGB(255, 196, 178, 11),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "Franchise SEO",
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Color.fromARGB(
                                      255,
                                      64,
                                      77,
                                      88,
                                    )),
                              ),
                            ],
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.check_circle_outline,
                                color: Color.fromARGB(255, 196, 178, 11),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "Local SEO",
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Color.fromARGB(
                                      255,
                                      64,
                                      77,
                                      88,
                                    )),
                              ),
                            ],
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.check_circle_outline,
                                color: Color.fromARGB(255, 196, 178, 11),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "Link Building",
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Color.fromARGB(
                                      255,
                                      64,
                                      77,
                                      88,
                                    )),
                              ),
                            ],
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.check_circle_outline,
                                color: Color.fromARGB(255, 196, 178, 11),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "Social Media Marketing",
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Color.fromARGB(
                                      255,
                                      64,
                                      77,
                                      88,
                                    )),
                              ),
                            ],
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.check_circle_outline,
                                color: Color.fromARGB(255, 196, 178, 11),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                child: Text(
                                  "Custom Website Design & Development",
                                  style: TextStyle(
                                    fontSize: 22,
                                    color: Color.fromARGB(
                                      255,
                                      64,
                                      77,
                                      88,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 80.0),
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.5,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 118, 153, 182),
                                      offset: Offset(
                                        5.0,
                                        5.0,
                                      ),
                                      blurRadius: 10.0,
                                      spreadRadius: 1.0,
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                        minRadius: 16.0,
                                        backgroundColor: blueclor,
                                        child: Icon(
                                          Icons.person,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 7,
                                      ),
                                      Text(
                                        "Company Skills",
                                        style: TextStyle(
                                          color: btextcolor,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(
                        height: 25,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "Inquire About Our Web-Based Digital Marketing Firm",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: blueclor,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "Our experienced team members always work closely with the clients to understand their needs. On the basis of their aim and goal we make a plan and apply effective strategies to give them the desired results.",
                          style: TextStyle(
                            color: stextclor,
                            fontSize: 16,
                            height: 1.5,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      // Get a Quote button
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: MaterialButton(
                          color: const Color.fromARGB(255, 26, 86, 136),
                          onPressed: () {
                            Get.to(
                              () => Quote(),
                            );
                          },
                          child: const Text(
                            "Get a Quote ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color.fromARGB(
                                        255, 231, 223, 223),
                                    width: 5.0,
                                    style: BorderStyle.solid),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/icon-1.png",
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "Latest Technology",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: blueclor,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "We always help the start-up companies and assist them to take their business to a new height.",
                          style: TextStyle(
                            color: stextclor,
                            fontSize: 16,
                            height: 1.5,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color.fromARGB(
                                        255, 231, 223, 223),
                                    width: 5.0,
                                    style: BorderStyle.solid),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/icon-2.png",
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "High Performance",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: blueclor,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "Designing a rich user interface and succeeding the end user experience is what we are specialise for.",
                          style: TextStyle(
                            color: stextclor,
                            fontSize: 16,
                            height: 1.5,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color.fromARGB(
                                        255, 231, 223, 223),
                                    width: 5.0,
                                    style: BorderStyle.solid),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/icon-3.png",
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "24x7 Customer Support",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: blueclor,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "For any help or assistance you can easily reach to our customer support team 24/7.",
                          style: TextStyle(
                            color: stextclor,
                            fontSize: 16,
                            height: 1.5,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color.fromARGB(
                                        255, 231, 223, 223),
                                    width: 5.0,
                                    style: BorderStyle.solid),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/icon-4.png",
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "Dedicated Employees",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: blueclor,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "We follow the industry standard practices.",
                          style: TextStyle(
                            color: stextclor,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 80.0),
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.5,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 118, 153, 182),
                                      offset: Offset(
                                        5.0,
                                        5.0,
                                      ),
                                      blurRadius: 10.0,
                                      spreadRadius: 1.0,
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                        minRadius: 16.0,
                                        backgroundColor: blueclor,
                                        child: Icon(
                                          Icons.settings,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 7,
                                      ),
                                      Text(
                                        "Your Portfolio",
                                        style: TextStyle(
                                          color: btextcolor,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "We do more than just Web Development!",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: blueclor,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "We do more than just Web  Development! Our company also ensure that the software designed and developed by us meets quality standards.",
                          style: TextStyle(
                            color: stextcolor,
                            fontSize: 15,
                            height: 1.5,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                            style: BorderStyle.solid,
                          ),
                        ),
                        child: ExpansionTile(
                          title: Text(
                            'Allaboutdevelopment',
                            style: TextStyle(
                              color: expantcol,
                            ),
                          ),
                          children: <Widget>[
                            ListTile(
                              title: Image.asset(
                                "assets/Portfolio2_1-600x294.png",
                              ),
                              subtitle: Text(
                                "We pride our selves in providing high quality workmanship, along with top quality customer services across the Auckland region.",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: stextclor,
                                  height: 1.2,
                                ),
                              ),
                            ),
                            MaterialButton(
                              color: btextcolor,
                              onPressed: () {
                                Get.to(() => Allaboutd());
                              },
                              child: Text(
                                "VIEW LIVE SITE",
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                            style: BorderStyle.solid,
                          ),
                        ),
                        child: ExpansionTile(
                          title: Text(
                            'China Beach Restaurant',
                            style: TextStyle(
                              color: expantcol,
                            ),
                          ),
                          children: <Widget>[
                            ListTile(
                              title: Image.asset(
                                "assets/Portfolio2_2.png",
                              ),
                            ),
                            MaterialButton(
                              color: btextcolor,
                              onPressed: () {
                                Get.to(() => Allaboutd());
                              },
                              child: Text(
                                "VIEW LIVE SITE",
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                            style: BorderStyle.solid,
                          ),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.add,
                                  color: Color.fromARGB(255, 3, 54, 96),
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "EPR Foods and Spices",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 3, 54, 96),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                            style: BorderStyle.solid,
                          ),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.add,
                                  color: Color.fromARGB(255, 3, 54, 96),
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "EFX Hair and Beauty",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 3, 54, 96),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                            style: BorderStyle.solid,
                          ),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.add,
                                  color: Color.fromARGB(255, 3, 54, 96),
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "PURAKAU Bed and Breakfast",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 3, 54, 96),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                          height: size.height * 0.05,
                          width: size.width * 0.5,
                          decoration: BoxDecoration(
                            boxShadow: const [BoxShadow(blurRadius: 3)],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.settings,
                                color: Color.fromARGB(255, 28, 92, 144),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Client Testimonials",
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "Profiles of The Powerful Advertising",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 29, 87, 135)),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          CarouselSlider(
                            items: sliderTextList,
                            options: CarouselOptions(
                              height: size.height * 0.45,
                              aspectRatio: 16 / 9,
                              viewportFraction: 1.0,
                              initialPage: 0,
                              enableInfiniteScroll: true,
                              reverse: false,
                              autoPlay: true,
                              autoPlayInterval: const Duration(seconds: 3),
                              autoPlayAnimationDuration:
                                  const Duration(milliseconds: 800),
                              autoPlayCurve: Curves.fastOutSlowIn,
                              enlargeCenterPage: true,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  activeIndex = index;
                                });
                              },
                              scrollDirection: Axis.horizontal,
                            ),
                          ),

                          // add the animated dots indicator heare
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 10.0,
                            ),
                            child: AnimatedSmoothIndicator(
                              activeIndex: activeIndex,
                              count: sliderTextList.length,
                            ),
                          ),
                        ],
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
