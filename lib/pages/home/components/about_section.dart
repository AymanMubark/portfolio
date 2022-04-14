import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../widgets/skil_icon.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          vertical: 100, horizontal: MediaQuery.of(context).size.width * .12),
      child: Column(
        crossAxisAlignment: (MediaQuery.of(context).size.width >= 1000)
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.center,
        children: [
          Text(
            "About Me",
            style: Theme.of(context).textTheme.headline3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              if (MediaQuery.of(context).size.width >= 1000)
                const Expanded(
                  child: SizedBox(),
                ),
              SizedBox(
                width: (MediaQuery.of(context).size.width >= 1000)
                    ? MediaQuery.of(context).size.width * .35
                    : MediaQuery.of(context).size.width * .7,
                child: Column(
                  crossAxisAlignment: MediaQuery.of(context).size.width >= 1000
                      ? CrossAxisAlignment.end
                      : CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Experienced Software Developer with 5+ years in the industry . expertise I am very familiar and experienced with Web Application Architecture and Mobile Apps also ,I have worked with a good number of successful development teams.',
                      textAlign: TextAlign.justify,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    SizedBox(height: 20),
                    OutlinedButton(
                      onPressed: () {
                        launch('https://aymanmubark.github.io/CV/');
                      },
                      style: OutlinedButton.styleFrom(
                        padding: EdgeInsetsDirectional.all(20),
                        backgroundColor: Colors.black,
                        primary: Colors.white,
                      ),
                      child: Text("Full CV"),
                    ),
                  ],
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
