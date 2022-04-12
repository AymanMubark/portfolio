import 'package:flutter/material.dart';

class RecommendationsSection extends StatelessWidget {
  const RecommendationsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .1, vertical: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recommendations ☺️",
            style: Theme.of(context).textTheme.headline3,
          ),
          SizedBox(height: 50),
          SizedBox(
            height: MediaQuery.of(context).size.width >= 1000 ? 220 : 400,
            child: ListView(
              padding: EdgeInsets.only(bottom: 20),
              scrollDirection: MediaQuery.of(context).size.width >= 1000
                  ? Axis.horizontal
                  : Axis.vertical,
              physics: const BouncingScrollPhysics(),
              children: [
                RecommendationItem(
                    name: "Ahmed Abd El-moniem",
                    image: "ahmed",
                    content:
                        "One of the most talented developers that I have ever worked with, a clean coder, a standards seeker, and loves to implement new technologies. He is a great researcher too, helped the team to shift from .net framework to .net core, also helped on implementing the Repository pattern in some web projects, moreover, his research helped the team to have a clear understanding and implementation of Clean Architecture. He also has good UI/UX skills and a good eye that sees how the user will interact with the UI in an abstract simple way. "),
                RecommendationItem(
                    name: "Osama Ahmed",
                    image: "osman",
                    content:
                        "Ayman is one of the best software engineers I have ever met and he writes clean & creative codes to solve the most complicated problems. He is also a fast learner with a good research skills. so, he always stays updated with the last technologies and he apply them if they could optimize the existing software solutions. Ayman is very experienced at backend and mobile development specially. We've worked together in several projects. Finally I would say he is a deadline oriented and an active team player. Highly recommended."),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class RecommendationItem extends StatelessWidget {
  final String name;
  final String image;
  final String content;
  const RecommendationItem(
      {Key? key,
      required this.name,
      required this.image,
      required this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20, bottom: 20),
      padding: const EdgeInsets.all(20),
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
      width: MediaQuery.of(context).size.width * .38,
      child: ListTile(
        leading: CircleAvatar(backgroundImage: AssetImage("assets/$image.jpg")),
        title: Text(name),
        subtitle: Text(content, maxLines: 7),
      ),
    );
  }
}
