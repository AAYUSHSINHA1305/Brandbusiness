import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
  final urlImages = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTH0YPNvDPMgqcsDb48GCzTudWD3v_K0hP_Ok09gr7W&s",
    "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/1200px-Image_created_with_a_mobile_phone.png",
    "https://www.industrialempathy.com/img/remote/ZiClJf-1920w.jpg",
  ];
  final SliderTextList = [
    const Text(
      "Offering tailor made solutions is what you can rely on the highly skilled team of this company. Great and professional attitude and they even completed the project on time.",
      style: TextStyle(
        fontSize: 18,
      ),
    ),
    const Text(
      "Wanted to get a user friendly website and I proud to say that the team of Web Maniacs helped me in getting that.",
      style: TextStyle(
        fontSize: 18,
      ),
    ),
    const Text(
      "would like to thank the team of web manaics for developing my company's website and helping me to rank on the top page of google.",
      style: TextStyle(
        fontSize: 18,
      ),
    ),
    const Text(
      "Great work and professional attitude. Got quality web application development service from the experts of this company.",
      style: TextStyle(
        fontSize: 18,
      ),
    ),
    const Text(
      "Happy to be connected with the team of web maniacs. I was impressed by their service. Thanks for helping my company to rank on the top page of google.",
      style: TextStyle(
        fontSize: 18,
      ),
    ),
    const Text(
      "I'm extremely satisfied with professional website development services of the team of Web Maniacs. Looking forward to choose your wide range of digital marketing solution very soon, thanks for your great service!.",
      style: TextStyle(
        fontSize: 18,
      ),
    ),
    const Text(
      "The dynamic team of Web Maniacs is excellent at offering world-class website design &amp; app development services to small and mid-range companies. Your highly-professional service is always recommended, availed at extremely pocket-saving rates. Thanks Web Maniacs!",
      style: TextStyle(
        fontSize: 18,
      ),
    ),
    const Text(
      "The team of Web Maniacs excels in offering wide range of software development help to businesses in New Zealand. My development team was overwhelmed to seek your professional assistance in lead generation. Thanks to their team-work!",
      style: TextStyle(
        fontSize: 18,
      ),
    ),
    const Text(
      "The team of Web Maniacs excels in offering wide range of software development help to businesses in New Zealand. My development team was overwhelmed to seek your professional assistance in lead generation. Thanks to their team-work!",
      style: TextStyle(
        fontSize: 18,
      ),
    ),
    const Text(
      "I'm overjoyed with your superb online marketing services, and your marketing experts guided me steps to retain clients and gain popularity in today's digital world. The team of Web Maniacs is extremely professional and offered my company industry-standard solution at affordable charges. Thanks Web Maniacs!",
      style: TextStyle(
        fontSize: 18,
      ),
    ),
    const Text(
      "I'm highly-satisfied with your professional application development services, offered to my company at extremely pocket-saving charges. Now, I'm looking forward to explore your other services and score a good rank in the search engine. Thanks to the entire team of Web Maniacs for the best help!",
      style: TextStyle(
        fontSize: 18,
      ),
    ),
    const Text(
      "The team of Web Maniacs excels in offering customized software design & development help to businesses. From lead generation to digital marketing and wifi marketing, your experts are qualified to offer exact solution at reasonable charges. Thanks Web Maniacs!",
      style: TextStyle(
        fontSize: 18,
      ),
    ),
    const Text(
      "The dynamic team of Web Maniacs has helped my small-size company to get a user-oriented website and promote my services in social media profiles. Their highly- professionalism encouraged me to grow as a mid-range company with great client retention potentials. Thanks to Web Maniacs for the help!",
      style: TextStyle(
        fontSize: 18,
      ),
    ),
    const Text(
      "From digital marketing to website customization and wifi marketing, the team of Web Maniacs excels in offering wide range of professional support to world-wide companies. I'm highly-impressed with their customer-oriented services and professionalism to work, and also offered me customization at pocket-saving rates. Thanks!",
      style: TextStyle(
        fontSize: 18,
      ),
    ),
    const Text(
      "I'm overjoyed to be connected with the talented team of Web Maniacs. Their digital marketing and wifi marketing solution is extremely promising and guided me to attain quick success in company's growth. Thanks Web Maniacs for helping me to get ranked in search engines!",
      style: TextStyle(
        fontSize: 18,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        CarouselSlider.builder(
                          options: CarouselOptions(
                              height: 300,
                              aspectRatio: 25 / 5,

                              // viewportFraction: 1,
                              // autoPlay: true,
                              // pageSnapping: false,
                              // enableInfiniteScroll: false,
                              // enlargeCenterPage: true,

                              enlargeStrategy: CenterPageEnlargeStrategy.height,
                              // reverse: true,
                              autoPlayInterval: const Duration(seconds: 2),
                              onPageChanged: ((index, reason) => setState)),
                          itemCount: urlImages.length,
                          itemBuilder: ((context, index, realIndex) {
                            final urlImage = urlImages[index];
                            return buildImage(urlImage, index);
                          }),
                        ),
                        Image.asset("assets/logo.png"),
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
                          children: const [
                            Icon(
                              Icons.settings,
                              color: Color.fromARGB(255, 43, 58, 147),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 10.0),
                              child: Text(
                                "Featured Services",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 43, 58, 147),
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
                    const Text(
                      "We Provide Additional Services That will Grow Your Business",
                      style: TextStyle(fontSize: 30, color: Colors.indigo),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Custom Application Develoment,MicroShoft Dynamics NVA,App Maintenance & Support, Taxi Booking App,Technologies ,React,Nativ Development,Nativiv App Development, Hybrd App Development,Blockchine App Development,Laraval App Development,PHP Web Develoment,Application Migration,UI & UX Design,Staff Augmentation, Enterprise Solution  Microshoft Dynamics CRM, Microsoft Dynamic 365 BC, SharePoint & 0365, Food Delivery App Fantasy Sports App, Music Streaming App, WoodPress Develoment, Paython Develoment,ASP.NET Develoment iPhone, App Develoment.",
                      style: TextStyle(
                        color: Color.fromARGB(255, 131, 136, 139),
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                      ),
                      child: Column(
                        children: [
                          Image.asset("assets/image1.webp"),
                          const Text(
                            "Web Design & Development",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w900,
                              color: Color.fromARGB(255, 17, 51, 78),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "You Can trust our experts for desigining and development an user friendly website for your company.",
                            style: TextStyle(
                              color: Color.fromARGB(255, 131, 136, 139),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                      ),
                      child: Column(
                        children: [
                          Image.asset("assets/image.webp"),
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
                          const Text(
                            "We only use the best platform to develop web application such as AngularJS, ASP.NET, Ruby on Rails(ROR), Symfony, Laravel, Node,React.",
                            style: TextStyle(
                              color: Color.fromARGB(255, 131, 136, 139),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                      ),
                      child: Column(
                        children: [
                          Image.asset("assets/image.webp"),
                          const Text(
                            "Digital Marketing",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w900,
                              color: Color.fromARGB(255, 17, 51, 78),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "We can easily help you in promoting your brand and getting connected with your targeted customers.",
                            style: TextStyle(
                              color: Color.fromARGB(255, 131, 136, 139),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.add_circle_outline,
                        size: 50,
                      ),
                      color: Colors.blue,
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 80.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.person,
                              color: Color.fromARGB(255, 43, 58, 147),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 10.0),
                              child: Text(
                                "About Company",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 43, 58, 147),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "We Solve Better Digital Marketing Solution",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w900,
                        color: Color.fromARGB(255, 8, 27, 43),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "High standard of solution at the best price in the industry you will get by working with us",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                        color: Color.fromARGB(255, 131, 136, 139),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Image.network(
                          "https://media.istockphoto.com/photos/red-number-one-sitting-on-white-background-picture-id1310405790?b=1&k=20&m=1310405790&s=170667a&w=0&h=wfZ5ydyNIc2nwx_FzGfAjC-l6dTv0GjH986QrGe9ujg=",
                          height: 25,
                          width: 20,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "A great value for your business",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Image.network(
                          "https://media.istockphoto.com/photos/two-number-red-3d-numerals-sign-picture-id1366741820?b=1&k=20&m=1366741820&s=170667a&w=0&h=_p-W9VrPZXtYmxnar_myi9ljRdzJIMp5-uN7LV3073A=",
                          height: 22,
                          width: 20,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "Achieve online success",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Image.network(
                          "https://image.shutterstock.com/image-illustration/number-3-260nw-64362010.jpg",
                          height: 22,
                          width: 20,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "Transform your indeas",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Image.network(
                      "https://image.shutterstock.com/image-vector/modern-flat-design-isometric-concept-600w-1181806747.jpg",
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
                          children: const [
                            Icon(
                              Icons.settings,
                              color: Color.fromARGB(255, 43, 58, 147),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 10.0),
                              child: Text(
                                "Your Mission",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 43, 58, 147),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "We Offer Complete Range of Features",
                      style: TextStyle(
                        fontSize: 22,
                        color: Color.fromARGB(255, 28, 73, 110),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      "At Web Maniacs, we excel in offering a wide range of industry-standard services, which are required to take businesses to the next level.",
                      style: TextStyle(
                        color: Color.fromARGB(255, 131, 136, 139),
                        fontSize: 16,
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
                        Image.network(
                          "https://image.shutterstock.com/image-photo/portrait-investment-advisor-businesswoman-sitting-600w-428774194.jpg",
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        const Text(
                          "Business Consulting",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 18, 65, 104),
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        const Text(
                          "The team of Web Maniacs helps to provide complete web consultation services to every approaching client. Our industry-standard consulting services comprise of website development, application development, graphic designing, e-commerce platforms customization, offshore social media marketing website development, digital marketing & SEO.",
                          style: TextStyle(
                            color: Color.fromARGB(255, 131, 136, 139),
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        const Text(
                          "Through Market Research To Retain Prospective Customers",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 40, 140, 221),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Our dynamic team of experts is certified to conduct eventual market research and understand what’s preferred in the current market. We’ve years of experience in related genres and well-versed to generate clients, increase as well as retain several prospective customers, and guide you to attain success at the earliest. And also, we will assure your peace of mind and guaranteed outcome.",
                          style: TextStyle(
                            color: Color.fromARGB(255, 131, 136, 139),
                            fontSize: 18,
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
                        Image.network(
                          "https://webmaniacs.co.nz/wp-content/uploads/2021/03/Business-Analytics.png",
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        const Text(
                          "Business Analytics",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 40, 140, 221),
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            "At Web Maniacs, you can meet your specific information required and make a smart choice with our world-class services to visualize and shared information collected across multiple sources. The team of Web Maniacs helps to facilitate data-driven decision-making with interactive and rich info visualizations, and incorporate information to optimize steps and accelerate performance. From full-time business support to online marketing and generation of clients, with our experts, you can get whatever is required to achieve ultimate success in your company.",
                            style: TextStyle(
                              color: Color.fromARGB(255, 131, 136, 139),
                              fontSize: 18,
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
                              color: Color.fromARGB(255, 40, 140, 221),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              "assets/check.png",
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
                              "assets/check.png",
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
                              "assets/check.png",
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
                              "assets/check.png",
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
                              "assets/check.png",
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
                              "assets/check.png",
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MaterialButton(
                              elevation: 2,
                              color: const Color.fromARGB(179, 240, 234, 234),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              onPressed: () {},
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.settings,
                                    color: Colors.blue,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 15.0),
                                    child: Text(
                                      "Clients Testimonials",
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 16,
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
                    ExpansionTile(
                        title: const Text("Marketing Research"),
                        children: [
                          Image.network(
                            "https://webmaniacs.co.nz/wp-content/uploads/2021/03/Marketing-Research.png",
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
                        Image.network(
                          "https://webmaniacs.co.nz/wp-content/uploads/2021/03/Branding-Support.png",
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
                          style:
                              TextStyle(color: Color.fromARGB(255, 64, 77, 88)),
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
                            Text(
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
                          children: const [
                            Icon(
                              Icons.person,
                              color: Color.fromARGB(255, 43, 58, 147),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 10.0),
                              child: Text(
                                "Company Skills",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 43, 58, 147),
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
                    const Text(
                      "Inquire About Our Web-Based Digital Marketing Firm",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 6, 29, 48)),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      "Our experienced team members always work closely with the clients to understand their needs. On the basis of their aim and goal we make a plan and apply effective strategies to give them the desired results.",
                      style: TextStyle(
                        color: Color.fromARGB(255, 55, 69, 81),
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    MaterialButton(
                      color: const Color.fromARGB(255, 26, 86, 136),
                      onPressed: () {},
                      child: const Text(
                        "Get a Quote ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Stack(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromARGB(255, 231, 223, 223),
                                width: 5.0,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Image.network(
                              "https://webmaniacs.co.nz/wp-content/uploads/2021/03/icon-1.png",
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      "Latest Technology",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 6, 29, 48)),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      "We always help the start-up companies and assist them to take their business to a new height.",
                      style: TextStyle(
                        color: Color.fromARGB(255, 55, 69, 81),
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Stack(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromARGB(255, 231, 223, 223),
                                width: 5.0,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Image.network(
                              "https://webmaniacs.co.nz/wp-content/uploads/2021/03/icon-2.png",
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      "High Performance",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 6, 29, 48)),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      "Designing a rich user interface and succeeding the end user experience is what we are specialise for.",
                      style: TextStyle(
                        color: Color.fromARGB(255, 55, 69, 81),
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Stack(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromARGB(255, 231, 223, 223),
                                width: 5.0,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Image.network(
                              "https://webmaniacs.co.nz/wp-content/uploads/2021/03/icon-3.png",
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      "24x7 Customer Support",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 6, 29, 48)),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      "For any help or assistance you can easily reach to our customer support team 24/7.",
                      style: TextStyle(
                        color: Color.fromARGB(255, 55, 69, 81),
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Stack(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromARGB(255, 231, 223, 223),
                                width: 5.0,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Image.network(
                              "https://webmaniacs.co.nz/wp-content/uploads/2021/03/icon-4.png",
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      "Dedicated Employees",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 6, 29, 48)),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      "We follow the industry standard practices.",
                      style: TextStyle(
                        color: Color.fromARGB(255, 55, 69, 81),
                        fontSize: 16,
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
                          children: const [
                            Icon(
                              Icons.settings,
                              color: Color.fromARGB(255, 43, 58, 147),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 10.0),
                              child: Text(
                                "Our Portfolio",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 43, 58, 147),
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
                    const Text(
                      "We do more than just Web Development!",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 6, 29, 48)),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      "We do more than just Web  Development! Our company also ensure that the software designed and developed by us meets quality standards.",
                      style: TextStyle(color: Color.fromARGB(255, 51, 77, 99)),
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
                              onPressed: () {
                                setState(() {});
                              },
                              child: const Text(
                                "Allaboutdevelopment",
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
                                "China Beach Restaurant",
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
                      padding: const EdgeInsets.symmetric(horizontal: 80.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.settings,
                              color: Color.fromARGB(255, 43, 58, 147),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 10.0),
                              child: Text(
                                "Clients Testimonials",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 43, 58, 147),
                                  fontSize: 16,
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
                    const Text(
                      "Profiles of The Powerful Advertising",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 11, 33, 51)),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    CarouselSlider(
                      items: SliderTextList,
                      options: CarouselOptions(
                        height: 400,
                        aspectRatio: 25 / 5,
                        // autoPlay: true,
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildImage(String urlImage, int index) => Container(
        // margin: const EdgeInsets.symmetric(horizontal: 4),
        color: Colors.grey,
        child: Image.network(
          urlImage,
          fit: BoxFit.cover,
        ),
      );
}
