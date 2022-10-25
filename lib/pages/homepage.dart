import 'package:brandbusiness/pages/quote.dart';
import 'package:brandbusiness/pages/web_application.dart';
import 'package:brandbusiness/util/hex_color.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/url_launcher.dart';

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

// method to launch a url
  Future<void> launch_url(String _url) async {
    if (!await launchUrl(Uri.parse(_url))) {
      throw 'Could not launch $_url';
    }
  }

  final sliderTextList = <Widget>[
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
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    slider(size, urlImages, true),
                    const SizedBox(
                      height: 20,
                    ),
                    button(size, "Featured Services"),
                    const SizedBox(
                      height: 20,
                    ),
                    headingText(
                        "We Provide Additional Services That will Grow Your Business",
                        30),
                    const SizedBox(
                      height: 20,
                    ),
                    dscText(
                        "Custom Application Develoment,MicroShoft Dynamics NVA,App Maintenance & Support, Taxi Booking App,Technologies ,React,Nativ Development,Nativiv App Development, Hybrd App Development,Blockchine App Development,Laraval App Development,PHP Web Develoment,Application Migration,UI & UX Design,Staff Augmentation, Enterprise Solution  Microshoft Dynamics CRM, Microsoft Dynamic 365 BC, SharePoint & 0365, Food Delivery App Fantasy Sports App, Music Streaming App, WoodPress Develoment, Paython Develoment,ASP.NET Develoment iPhone, App Develoment.",
                        2),
                    const SizedBox(
                      height: 20,
                    ),
                    sericesCard(
                        size,
                        cardcolorp,
                        'assets/ftr1.png',
                        "Web Application Development",
                        "We only use the best platform to develop web application such as AngularJS, ASP.NET, Ruby on Rails(ROR), Symfony, Laravel, Node,React."),
                    sericesCard(
                        size,
                        cardcolorg,
                        'assets/ftr2.png',
                        "Web Application Development",
                        "We only use the best platform to develop web application such as AngularJS, ASP.NET, Ruby on Rails(ROR), Symfony, Laravel, Node,React."),
                    sericesCard(
                        size,
                        cardcolorp,
                        'assets/ftr1.png',
                        "Web Application Development",
                        "We only use the best platform to develop web application such as AngularJS, ASP.NET, Ruby on Rails(ROR), Symfony, Laravel, Node,React."),
                    SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    button(size, "About Company"),
                    const SizedBox(
                      height: 25,
                    ),
                    headingText(
                        "We Solve Better Digital Marketing Solution", 30),
                    const SizedBox(
                      height: 15,
                    ),
                    dscText(
                        "High standard of solution at the best price in the industry you will get by working with us",
                        2),
                    const SizedBox(
                      height: 15,
                    ),
                    steps('1', "A great value for your business"),
                    const SizedBox(
                      height: 15,
                    ),
                    steps("2", "Achieve online success"),
                    const SizedBox(
                      height: 15,
                    ),
                    steps("3`", "Transform your indeas"),
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
                    button(size, "Your Mission"),
                    const SizedBox(
                      height: 15,
                    ),
                    headingText("We Offer Complete Range of Features", 30),
                    const SizedBox(
                      height: 25,
                    ),
                    dscText(
                        "At Web Maniacs, we excel in offering a wide range of industry-standard services, which are required to take businesses to the next level.",
                        2),
                    const SizedBox(
                      height: 25,
                    ),
                    expansion(
                        "Business Consulting",
                        "assets/tab-pic.jpg",
                        "The team of Web Maniacs helps to provide complete web consultation services to every approaching client. Our industry-standard consulting services comprise of website development, application development, graphic designing, e-commerce platforms customization, offshore social media marketing website development, digital marketing & SEO.",
                        "Through Market Research To Retain Prospective Customers",
                        false, [
                      "Our dynamic team of experts is certified to conduct eventual market research and understand what’s preferred in the current market. We’ve years of experience in related genres and well-versed to generate clients, increase as well as retain several prospective customers, and guide you to attain success at the earliest. And also, we will assure your peace of mind and guaranteed outcome."
                    ]),
                    expansion(
                        "Business Analytics",
                        "assets/Business-Analytics.png",
                        "At Web Maniacs, you can meet your specific information required and make a smart choice with our world-class services to visualize and shared information collected across multiple sources. The team of Web Maniacs helps to facilitate data-driven decision-making with interactive and rich info visualizations, and incorporate information to optimize steps and accelerate performance. From full-time business support to online marketing and generation of clients, with our experts, you can get whatever is required to achieve ultimate success in your company.",
                        "Transforming Data Into Insight & Action",
                        true,
                        ["dscription 2"]),
                    expansion(
                        "Business Analytics",
                        "assets/Business-Analytics.png",
                        "At Web Maniacs, you can meet your specific information required and make a smart choice with our world-class services to visualize and shared information collected across multiple sources. The team of Web Maniacs helps to facilitate data-driven decision-making with interactive and rich info visualizations, and incorporate information to optimize steps and accelerate performance. From full-time business support to online marketing and generation of clients, with our experts, you can get whatever is required to achieve ultimate success in your company.",
                        "Transforming Data Into Insight & Action",
                        true,
                        ["dscription 2"]),
                    expansion(
                        "Business Analytics",
                        "assets/Business-Analytics.png",
                        "At Web Maniacs, you can meet your specific information required and make a smart choice with our world-class services to visualize and shared information collected across multiple sources. The team of Web Maniacs helps to facilitate data-driven decision-making with interactive and rich info visualizations, and incorporate information to optimize steps and accelerate performance. From full-time business support to online marketing and generation of clients, with our experts, you can get whatever is required to achieve ultimate success in your company.",
                        "Transforming Data Into Insight & Action",
                        true,
                        ["dscription 2"]),
                    expansion(
                        "Business Analytics",
                        "assets/Business-Analytics.png",
                        "At Web Maniacs, you can meet your specific information required and make a smart choice with our world-class services to visualize and shared information collected across multiple sources. The team of Web Maniacs helps to facilitate data-driven decision-making with interactive and rich info visualizations, and incorporate information to optimize steps and accelerate performance. From full-time business support to online marketing and generation of clients, with our experts, you can get whatever is required to achieve ultimate success in your company.",
                        "Transforming Data Into Insight & Action",
                        true,
                        ["dscription 2"]),
                    const SizedBox(
                      height: 25,
                    ),
                    button(size, "Company Skills"),
                    const SizedBox(
                      height: 25,
                    ),
                    headingText(
                        "Inquire About Our Web-Based Digital Marketing Firm",
                        30),

                    const SizedBox(
                      height: 25,
                    ),
                    dscText(
                        "Our experienced team members always work closely with the clients to understand their needs. On the basis of their aim and goal we make a plan and apply effective strategies to give them the desired results.",
                        2),

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
                    skillsCard("assets/icon-1.png"),
                    const SizedBox(
                      height: 25,
                    ),
                    headingText("Latest Technology", 22),
                    const SizedBox(
                      height: 25,
                    ),
                    dscText(
                        "We always help the start-up companies and assist them to take their business to a new height.",
                        1.5),
                    const SizedBox(
                      height: 25,
                    ),
                    skillsCard("assets/icon-2.png"),
                    const SizedBox(
                      height: 25,
                    ),
                    headingText("High Performance", 22),
                    const SizedBox(
                      height: 25,
                    ),
                    dscText(
                        "Designing a rich user interface and succeeding the end user experience is what we are specialise for.",
                        1.5),
                    const SizedBox(
                      height: 25,
                    ),
                    skillsCard("assets/icon-3.png"),
                    const SizedBox(
                      height: 25,
                    ),
                    headingText("24x7 Customer Support", 22),
                    const SizedBox(
                      height: 25,
                    ),
                    dscText(
                        "For any help or assistance you can easily reach to our customer support team 24/7.",
                        1.5),
                    const SizedBox(
                      height: 25,
                    ),
                    skillsCard("assets/icon-4.png"),
                    const SizedBox(
                      height: 25,
                    ),
                    headingText("Didacated Employees", 22),
                    const SizedBox(
                      height: 25,
                    ),
                    dscText("We follow the industry standard practices.", 1),
                    const SizedBox(
                      height: 25,
                    ),
                    button(size, "Your Portfolio"),
                    const SizedBox(
                      height: 25,
                    ),
                    headingText("We do more than just Web Development!", 22),
                    const SizedBox(
                      height: 25,
                    ),
                    dscText(
                        "We do more than just Web  Development! Our company also ensure that the software designed and developed by us meets quality standards.",
                        1.5),
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
                              launch_url('https://allaboutdevelopments.com/');
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
                              // Get.to(() => Allaboutd());
                              launch_url('https://webmaniacs.co.nz/#');
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
                          'EPR Foods and Spices',
                          style: TextStyle(
                            color: expantcol,
                          ),
                        ),
                        children: <Widget>[
                          ListTile(
                            title: Image.asset(
                              "assets/Portfolio2_3-600x294.png",
                            ),
                          ),
                          MaterialButton(
                            color: btextcolor,
                            onPressed: () {
                              // Get.to(() => Allaboutd());
                              launch_url('https://selcofood.com.au/');
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
                          'EFX Hair and Beauty',
                          style: TextStyle(
                            color: expantcol,
                          ),
                        ),
                        children: <Widget>[
                          ListTile(
                            title: Image.asset(
                              "assets/Portfolio2_4.png",
                            ),
                          ),
                          MaterialButton(
                            color: btextcolor,
                            onPressed: () {
                              // Get.to(() => Allaboutd());
                              launch_url('https://www.efxhair.co.nz/');
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
                          'PURAKAU Bed and Breakfast',
                          style: TextStyle(
                            color: expantcol,
                          ),
                        ),
                        children: <Widget>[
                          ListTile(
                            title: Image.asset(
                              "assets/Portfolio2_5.png",
                            ),
                          ),
                          MaterialButton(
                            color: btextcolor,
                            onPressed: () {
                              // Get.to(() => Allaboutd());
                              launch_url('https://www.purakau.co.nz/');
                            },
                            child: Text(
                              "VIEW LIVE SITE",
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    button(size, "Client Testimonials"),
                    const SizedBox(
                      height: 25,
                    ),
                    headingText("Profiles of The Powerful Advertising", 22),
                    const SizedBox(
                      height: 25,
                    ),
                    slider(size, sliderTextList, false),
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
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 10,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 300,
                              ),
                              headingText("VISIT US", 26),
                              heading2("Newzealand Office"),
                              dscText2(
                                  "98 Tiverton Rd, New Windsor, Auckland 0600"),
                              SizedBox(
                                height: 20,
                              ),
                              heading2("Australia Office"),
                              dscText2(
                                  "Unit 18 1 Browne Pde, Warwick Farm, NSW, 2170"),
                              SizedBox(
                                height: 20,
                              ),
                              heading2("Canada Office"),
                              dscText2(
                                  "115 Bellchase Trail, Brampton, ON L6P 3L3"),
                              SizedBox(
                                height: 20,
                              ),
                              heading2("USA Office"),
                              dscText2("316 Quince Ave Galloway, NJ 08205"),
                              SizedBox(
                                height: 20,
                              ),
                              heading2("London Office"),
                              dscText2(
                                  "27 Old Gloucester Street LONDON WC1N 3AX \n UNITED  KINGDOM"),
                              SizedBox(
                                height: 20,
                              ),
                              dscText2("COMPANY NUMBER: 13953026"),
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
                              headingText("CONTACT US", 26),
                              SizedBox(
                                height: 20,
                              ),
                              phoneText("New Zealand : ", "+64 9 889 4211"),
                              SizedBox(
                                height: 20,
                              ),
                              phoneText('Australia : : ', '+61 28006 4422'),
                              SizedBox(
                                height: 20,
                              ),
                              phoneText('USA & Canada  : ', ' +1 8148220436'),
                              SizedBox(
                                height: 20,
                              ),
                              phoneText('UK  : ', '+44 20 3239 4243'),
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
                              headingText("PAYMENT", 26),
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
                        ),
                      ],
                    ),
                  ],
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

  Widget slider(Size size, List<Widget> items, bool logo) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CarouselSlider(
          items: items,
          options: CarouselOptions(
            height: size.height * 0.5,
            aspectRatio: 16 / 9,
            viewportFraction: 1.0,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
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
            count: items.length,
          ),
        ),
        Positioned(
          bottom: 275,
          left: 20,
          child: Visibility(
            visible: (logo),
            child: Image.asset(
              "assets/logo.png",
            ),
          ),
        ),
      ],
    );
  }

  Widget button(Size size, String text) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
          height: size.height * 0.05,
          width: size.width * 0.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
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
                text,
                style: TextStyle(
                  color: btextcolor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget headingText(String text, double? fontSize) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize ?? 30,
          color: blueclor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget dscText(String text, double? height) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Text(
        text,
        style: TextStyle(
          color: stextcolor,
          fontSize: 16,
          height: height ?? 2,
        ),
      ),
    );
  }

  Widget sericesCard(
      Size size, Color cardColor, String img, String heading, String dsc) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        height: size.height * 0.5,
        width: size.width,
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(30),
            right: Radius.circular(30),
          ),
        ),
        child: Stack(
          children: [
            Column(
              children: [
                Image.asset(img),
                Text(
                  heading,
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
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    dsc,
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
    );
  }

  Widget steps(String number, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: circleAvcolr,
            child: Text(
              number,
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
            text,
            style: TextStyle(
              color: circleAvcolr,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }

  Widget tickedText(String text) {
    return Row(
      children: [
        Image.asset(
          "assets/tick.jpg",
          height: 40,
          width: 40,
        ),
        Text(
          text,
          style: TextStyle(
            color: Color.fromARGB(255, 131, 136, 139),
            fontSize: 18,
          ),
        ),
      ],
    );
  }

  Widget expansion(String heading, String img, String dsc, String heading2,
      bool isTickedList, List<String> dsc2) {
    return ExpansionTile(
      title: Text(heading),
      children: [
        const SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Image.asset(
            img,
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        headingText(heading, 30),
        const SizedBox(
          height: 25,
        ),
        dscText(dsc, 2),
        const SizedBox(
          height: 25,
        ),
        Text(
          heading2,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: blueclor,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        (isTickedList)
            ? ListView.builder(
                shrinkWrap: true,
                itemCount: dsc2.length,
                itemBuilder: (context, index) {
                  return tickedText(dsc2[index]);
                })
            : dscText(dsc2[0], 2),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }

  Widget skillsCard(String img) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          border: Border.all(
              color: const Color.fromARGB(255, 231, 223, 223),
              width: 5.0,
              style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Image.asset(
            img,
          ),
        ),
      ),
    );
  }

  Widget heading2(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 19,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget dscText2(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: blueclor,
          fontSize: 15,
        ),
      ),
    );
  }

  Widget phoneText(String place, String number) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: RichText(
        text: TextSpan(
          text: place,
          style: TextStyle(
            fontSize: 19,
            color: Colors.black,
          ),
          children: <TextSpan>[
            TextSpan(
              text: number,
              style: TextStyle(
                fontSize: 19,
                color: blueclor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
