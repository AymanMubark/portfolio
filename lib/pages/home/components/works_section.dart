import 'package:flutter/material.dart';
import '../../../widgets/work_item.dart';

class WorksSection extends StatelessWidget {
  const WorksSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          vertical: 100, horizontal: MediaQuery.of(context).size.width * .12),
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
              Container(
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
