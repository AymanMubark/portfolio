import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NavIconItem extends StatelessWidget {
  final IconData icon;
  final String? url;
  const NavIconItem({Key? key, required this.icon, this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: IconButton(
        icon: Icon(icon),
        onPressed: () {
          launch(url ?? "");
        },
      ),
    );
  }
}
