import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../widgets/nav_icon_item.dart';

class SocialContact extends StatelessWidget {
  const SocialContact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
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
    );
  }
}
