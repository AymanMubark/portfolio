import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/pages/home/components/socail_contact.dart';
import 'package:portfolio/widgets/nav_icon_item.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import '../../widgets/scroll_to_bottom.dart';
import 'components/footer_section.dart';
import 'components/more_in_section.dart';
import 'components/works_section.dart';
import 'package:flutter/material.dart';
import 'components/about_section.dart';
import 'components/hi_section.dart';
import 'components/nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();
  List<Widget> sections = const [
    HiSection(), //=> 0
    ScrollToBottom(), //=> 1
    AboutSection(), //=> 2
    WorksSection(), //=> 3
    MoreInSection(), //=> 4
    FooterSection(), // 5
  ];
  jumbTo(index) {
    Navigator.pop(context);
    itemScrollController.scrollTo(
        index: index,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOutCubic);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        endDrawer: (MediaQuery.of(context).size.width >= 1000
            ? null
            : Drawer(
                child: ListView(
                  padding: EdgeInsets.symmetric(vertical: 100),
                  children: [
                    ListTile(
                      title: Text("My Works",
                          style: Theme.of(context).textTheme.headline6),
                      onTap: () => jumbTo(3),
                    ),
                    ListTile(
                      title: Text("About",
                          style: Theme.of(context).textTheme.headline6),
                      onTap: () => jumbTo(2),
                    ),
                    ListTile(
                      title: Text("Contact",
                          style: Theme.of(context).textTheme.headline6),
                      onTap: () => jumbTo(5),
                    ),
                    SizedBox(height: 30),
                    Center(child: SocialContact()),
                  ],
                ),
              )),
        body: Column(
          children: [
            NavBar(
              scrollTo: (index) {
                itemScrollController.scrollTo(
                    index: index,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOutCubic);
              },
            ),
            Expanded(
                child: ScrollablePositionedList.builder(
              itemCount: sections.length,
              itemBuilder: (context, index) => sections[index],
              itemScrollController: itemScrollController,
              itemPositionsListener: itemPositionsListener,
            )),
          ],
        ),
      ),
    );
  }
}
