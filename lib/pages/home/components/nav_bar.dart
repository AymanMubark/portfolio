import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../widgets/nav_icon_item.dart';
import '../../../widgets/nav_text_item.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final Function scrollTo;
  const NavBar({Key? key, required this.scrollTo}) : super(key: key);

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
                children: [
                  NavTextItem(
                    title: 'My Works',
                    onTap: () => scrollTo(3),
                  ),
                  NavTextItem(
                    title: 'About',
                    onTap: () => scrollTo(2),
                  ),
                  NavTextItem(
                    title: 'Contact',
                    onTap: () => scrollTo(5),
                  ),
                ],
              ),
              const SizedBox(width: 40),
              Row(
                children: const [
                  NavIconItem(
                      icon: FontAwesomeIcons.github,
                      url: 'https://github.com/AymanMubark'),
                  NavIconItem(
                      icon: FontAwesomeIcons.linkedin,
                      url: 'https://www.linkedin.com/in/ayman-mubarak-ahmed'),
                  NavIconItem(
                      icon: FontAwesomeIcons.behance,
                      url: 'https://www.behance.net/aymanmubarak1'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
