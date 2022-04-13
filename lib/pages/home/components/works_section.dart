import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import '../../../widgets/work_item.dart';

class WorksSection extends StatelessWidget {
  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();
  WorksSection({Key? key}) : super(key: key);
  final List<WorkItem> works = const [
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
      image: "smartepay",
      title: "Smart E-pay",
      description:
          "Smart E-Pay is a point of sale solution that comes in various forms of customised software implemented in POS machines, which aims at enhancing & increasing the productivity and functionality of company and organization owners. Based on Smart E-Pay’s customizable software, this high-tech system produces soft & hard copy analytics that aid in the process of completing a customer’s order, which is documented on a designated cloud-server, & created on a smart point of sale system. It inquires specific orders of selected services by the consumer, which follows the insisting of the order & the desired payment method.",
      tools: [
        "dotnet",
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
  ];
  int currentindex = 0;
  jumbTo(index) {
    itemScrollController.scrollTo(
        index: index,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeOutQuad);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 100),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * .12),
            child: Column(
              crossAxisAlignment: (MediaQuery.of(context).size.width >= 1000)
                  ? CrossAxisAlignment.end
                  : CrossAxisAlignment.center,
              children: [
                Text(
                  "My Work",
                  style: Theme.of(context).textTheme.headline3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: (MediaQuery.of(context).size.width >= 1000)
                          ? MediaQuery.of(context).size.width * .35
                          : MediaQuery.of(context).size.width * .6,
                      child: Text(
                        'These are some of my personal projects, some are design, others design and develop',
                        textAlign: TextAlign.justify,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                    if (MediaQuery.of(context).size.width >= 1000)
                      const Expanded(
                        child: SizedBox(),
                      ),
                  ],
                ),
                const SizedBox(height: 70),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                IconButton(
                  padding: EdgeInsets.symmetric(
                      horizontal:
                          (MediaQuery.of(context).size.width >= 1000) ? 30 : 0),
                  icon: Icon(FontAwesomeIcons.angleLeft),
                  onPressed: () {
                    if (currentindex > 0) {
                      currentindex--;
                      jumbTo(currentindex);
                    }
                  },
                ),
                Expanded(
                  child: SizedBox(
                    height: 500,
                    child: ScrollablePositionedList.builder(
                      itemCount: works.length,
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => works[index],
                      itemScrollController: itemScrollController,
                      itemPositionsListener: itemPositionsListener,
                    ),
                  ),
                ),
                IconButton(
                  padding: EdgeInsets.symmetric(
                      horizontal:
                          (MediaQuery.of(context).size.width >= 1000) ? 30 : 0),
                  icon: Icon(FontAwesomeIcons.angleRight),
                  onPressed: () {
                    if (currentindex < works.length - 3 || currentindex == 0) {
                      currentindex++;
                      jumbTo(currentindex);
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
