import 'package:flutter/material.dart';

class NavTextItem extends StatelessWidget {
  final String title;
  final GestureTapCallback onTap;
  const NavTextItem({Key? key, required this.title, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline6!.copyWith(
                fontSize: 18,
              ),
        ),
      ),
    );
  }
}
