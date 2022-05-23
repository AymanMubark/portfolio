import 'package:flutter/material.dart';

class ScrollToBottom extends StatelessWidget {
  const ScrollToBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 50),
      child: Column(
        children: [
          Text('SCROLL',
              style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).textTheme.headline1!.color)),
          SizedBox(height: 20),
          Icon(Icons.expand_more, size: 15),
          Icon(Icons.expand_more, size: 15),
          Icon(Icons.expand_more, size: 15),
        ],
      ),
    );
  }
}
