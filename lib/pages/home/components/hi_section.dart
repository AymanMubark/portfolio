import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HiSection extends StatelessWidget {
  const HiSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        (MediaQuery.of(context).size.width >= 1000)
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildTitle(context),
                  buildImage(),
                ],
              )
            : Column(
                children: [
                  buildImage(),
                  buildTitle(context),
                ],
              ),
        SizedBox(height: 30),
        SizedBox(
          width: 500,
          child: Text(
            "I'm a dotnet developer and flutter developer from sudan 🇸🇩",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        SizedBox(height: 30),
        OutlinedButton(
          onPressed: () {
            launch('mailto:cs.aymanmubark@gmail.com');
          },
          style: OutlinedButton.styleFrom(
            padding: EdgeInsetsDirectional.all(20),
            backgroundColor: Colors.black,
            primary: Colors.white,
          ),
          child: Text("Reach out to me"),
        ),
      ],
    );
  }

  buildTitle(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Hi, my name is",
          style: Theme.of(context).textTheme.headline3,
        ),
        Text(
          "Ayaman 😉",
          style: Theme.of(context).textTheme.headline2!.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
      ],
    );
  }

  buildImage() {
    return Image.asset("assets/profile.png", height: 500);
  }
}
