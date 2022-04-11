import 'package:flutter/material.dart';
import '../../../widgets/skil_icon.dart';

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
