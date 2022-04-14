import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../widgets/nav_icon_item.dart';
import 'package:flutter/material.dart';

class MoreInSection extends StatelessWidget {
  const MoreInSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 60),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "MORE IN",
            style: Theme.of(context).textTheme.headline5,
          ),
          const SizedBox(height: 20),
          Container(
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: BorderRadius.circular(8),
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
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                NavIconItem(
                    icon: FontAwesomeIcons.linkedin,
                    url: 'https://www.linkedin.com/in/ayman-mubarak-ahmed/'),
                NavIconItem(
                    icon: FontAwesomeIcons.githubSquare,
                    url: 'https://github.com/AymanMubark'),
                NavIconItem(
                    icon: FontAwesomeIcons.behanceSquare,
                    url: 'https://www.behance.net/aymanmubarak1'),
                NavIconItem(
                    icon: FontAwesomeIcons.twitterSquare,
                    url: 'https://twitter.com/AymanMuba'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
