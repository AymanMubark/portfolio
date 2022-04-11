import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            NavBar(),
            Expanded(
              child: ListView(
                children: [
                  HiSection(),
                  JobDesciption(),
                  ScrollToBottom(),
                  AboutSection(),
                  WorksSection(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ScrollToBottom extends StatelessWidget {
  const ScrollToBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 50),
      child: Column(
        children: [
          Text('SCROLL', style: TextStyle(fontSize: 16, color: Colors.black45)),
          SizedBox(height: 20),
          Icon(Icons.expand_more, size: 15),
          Icon(Icons.expand_more, size: 15),
          Icon(Icons.expand_more, size: 15),
        ],
      ),
    );
  }
}

class JobDesciption extends StatelessWidget {
  const JobDesciption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .35, vertical: 30),
      child: Column(
        children: [
          Text(
            "I'm a dotnet developer and backend developer from sudan 🇸🇩",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline5,
          ),
          SizedBox(height: 30),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              padding: EdgeInsetsDirectional.all(20),
              backgroundColor: Colors.black,
              primary: Colors.white,
            ),
            child: Text("Reach out to me"),
          )
        ],
      ),
    );
  }
}

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          vertical: 100, horizontal: MediaQuery.of(context).size.width * .12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "About Me",
            style: Theme.of(context).textTheme.headline3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: SizedBox(),
              ),
              Container(
                width: MediaQuery.of(context).size.width * .35,
                child: Text(
                  'Experienced Software Developer with 4+ years in the industry . expertise I am very familiar and experienced with Web Application Architecture and Mobile Apps also ,I have worked with a good number of successful development teams.',
                  textAlign: TextAlign.justify,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
            ],
          ),
          SizedBox(height: 70),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SkilIcon(icon: 'c#'),
              SkilIcon(icon: 'flutter'),
              SkilIcon(icon: 'github'),
              SkilIcon(icon: 'firebase'),
              SkilIcon(icon: 'microsoft'),
              SkilIcon(icon: 'adobe-xd'),
            ],
          )
        ],
      ),
    );
  }
}

class WorksSection extends StatelessWidget {
  const WorksSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          vertical: 100, horizontal: MediaQuery.of(context).size.width * .12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "My Work",
            style: Theme.of(context).textTheme.headline3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * .35,
                child: Text(
                  'These are some of my personal projects, some are design, others design and develop',
                  textAlign: TextAlign.justify,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              Expanded(
                child: SizedBox(),
              ),
            ],
          ),
          SizedBox(height: 70),
          SizedBox(
            height: 500,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                WorkItem(
                  image: "amear",
                  title: "Ameera",
                  description:
                      "Ameera is a comprehensive App aims to comfort women by providing all beauty and health services from best artists in Sudan at customers’ homes. These services include beauty services and health services such as Henna and haircare in addition to products such as accessories, cosmetics, perfumes, shoes, and more.",
                  tools: [
                    "adobe-xd",
                    "flutter",
                  ],
                ),
                WorkItem(
                  image: "istudent",
                  title: "I Student",
                  description:
                      "iStudent is a school bus & student tracking solution, which was manufactured to insure the security & safety to the student’s on school campus. The product is barrier breaker of innovative technology. iStudent is mainly a school bus & class attendance tracking system in UAE.",
                  tools: [
                    "dotnet",
                  ],
                ),
                WorkItem(
                  image: "shifaty",
                  title: "Shifaty",
                  description:
                      "Shifaty app is a link between chefs and customers by chatting with the possibility of ordering food and paying online .",
                  tools: [
                    "flutter",
                  ],
                ),
                WorkItem(
                  image: "monjid",
                  title: "Monjid",
                  description:
                      "Monjid is an auto services platform that offers roadside assistance 24/7 and reaches customers in their places. Monjid offers roadside assistance services include: tire services and battery services and towing services a and also Monjid offer oil change service.",
                  tools: [
                    "dot-net-core",
                    "flutter",
                  ],
                ),
                WorkItem(
                  image: "doctor",
                  title: "Find Doctor",
                  description:
                      "UI/UX inspiration a mobile app for medical services hospitals, pharmacies , Labs.just for fun and imporove ui/ux skils.",
                  tools: [
                    "adobe-xd",
                  ],
                ),
                WorkItem(
                  image: "petrol",
                  title: "Golden Petrol",
                  description:
                      "Proceeding from a young ambitious vision driven by determination and determination, Montasher Company was established by its manager, Mr. Farouk Al-Samman, to reserve its place among the best marketing and design companies in the Arab arena, incubating the best experiences.",
                  tools: [
                    "adobe-xd",
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class WorkItem extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final List<String> tools;
  const WorkItem(
      {Key? key,
      required this.image,
      required this.title,
      required this.description,
      required this.tools})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(2, 10),
          ),
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(2, 0),
          ),
        ],
      ),
      width: MediaQuery.of(context).size.width * .25,
      child: Column(
        children: [
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width * .25,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/$image.jpg",
                ),
              ),
            ),
          ),
          ListTile(
            title: Text(title),
            contentPadding: EdgeInsets.all(10),
            subtitle: Text(
              description,
              textAlign: TextAlign.justify,
              maxLines: 3,
            ),
          ),
          Row(
              children: tools
                  .map((e) => Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset(
                          "assets/$e.png",
                          height: 30,
                          width: 30,
                        ),
                      ))
                  .toList()),
        ],
      ),
    );
  }
}

class SkilIcon extends StatelessWidget {
  final String icon;
  const SkilIcon({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      // decoration: BoxDecoration(
      // borderRadius: BorderRadius.circular(20),
      // ),
      // padding: EdgeInsets.all(15),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Image.asset("assets/$icon.png", height: 30, width: 30),
      ),
    );
  }
}

class HiSection extends StatelessWidget {
  const HiSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi, my name is",
              style: Theme.of(context).textTheme.headline3,
            ),
            Text(
              "Ayaman",
              style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
        Image.asset("assets/profile.png", height: 500),
      ],
    );
  }
}

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .1, vertical: 10),
      height: MediaQuery.of(context).size.height * .1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(FontAwesomeIcons.code),
              SizedBox(width: 20),
              Text(
                'Ayman Ahmed'.toUpperCase(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Row(
                children: const [
                  NavTextItem(
                    title: 'My Works',
                  ),
                  NavTextItem(
                    title: 'About',
                  ),
                  NavTextItem(
                    title: 'Contact',
                  ),
                ],
              ),
              const SizedBox(width: 40),
              Row(
                children: const [
                  NavIconItem(icon: FontAwesomeIcons.github),
                  NavIconItem(icon: FontAwesomeIcons.linkedin),
                  NavIconItem(icon: FontAwesomeIcons.instagramSquare),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class NavIconItem extends StatelessWidget {
  final IconData icon;
  const NavIconItem({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: IconButton(
        icon: Icon(icon),
        onPressed: () {},
      ),
    );
  }
}

class NavTextItem extends StatelessWidget {
  final String title;
  const NavTextItem({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          title,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
