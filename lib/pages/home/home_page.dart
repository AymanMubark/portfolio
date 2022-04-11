import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
