import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: EdgeInsets.symmetric(
        vertical: 35,
        horizontal: MediaQuery.of(context).size.width * .1,
      ),
      child: (MediaQuery.of(context).size.width >= 1000)
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: buildFooterItems(context),
            )
          : Column(
              children: buildFooterItems(context),
            ),
    );
  }

  buildFooterItems(context) {
    return [
      Row(
        children: [
          Text(
            "Contact",
            style: Theme.of(context).textTheme.headline4!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
          ),
          SizedBox(
            width: 30,
          ),
          IconButton(
            onPressed: () {
              launch('mailto:cs.aymanmubark@gmail.com');
            },
            icon: Icon(FontAwesomeIcons.solidEnvelope),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {
              launch('tel:+966558413580');
            },
            icon: Icon(FontAwesomeIcons.squarePhone),
            color: Colors.white,
          ),
        ],
      ),
      Text(
        "@AymanMuba",
        style: Theme.of(context).textTheme.headline6!.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
      ),
    ];
  }
}
