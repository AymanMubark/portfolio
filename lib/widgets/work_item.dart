import 'package:flutter/material.dart';

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
