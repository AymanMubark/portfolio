import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/blocs/app_bloc.dart';
import '../../../widgets/nav_text_item.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'socail_contact.dart';

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
          GestureDetector(
            onTap: () => scrollTo(0),
            child: Row(
              children: [
                Icon(FontAwesomeIcons.code),
                SizedBox(width: 20),
                Text(
                  'Ayman Ahmed'.toUpperCase(),
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                ),
              ],
            ),
          ),
          (MediaQuery.of(context).size.width >= 1000)
              ? Row(
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
                    SocialContact(),
                    const SizedBox(width: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: IconButton(
                        icon: Icon(context.watch<AppBloc>().isDark
                            ? FontAwesomeIcons.sun
                            : FontAwesomeIcons.moon),
                        onPressed: () {
                          context.read<AppBloc>().changeThemeMode();
                        },
                      ),
                    ),
                  ],
                )
              : IconButton(
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                  icon: const Icon(FontAwesomeIcons.barsStaggered)),
        ],
      ),
    );
  }
}
