import 'package:flutter/material.dart';

class JobDesciptionSection extends StatelessWidget {
  const JobDesciptionSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .35, vertical: 100),
      child: Column(
        children: [
          Text(
            "I'm a dotnet developer and backend developer from sudan 🇸🇩",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline5,
          ),
          SizedBox(height: 30),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              padding: EdgeInsetsDirectional.all(20),
              backgroundColor: Colors.black,
              primary: Colors.white,
            ),
            child: Text("Reach out to me"),
          )
        ],
      ),
    );
  }
}
