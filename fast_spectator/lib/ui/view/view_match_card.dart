import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MatchCardView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MatchCardState();
  }
}

class MatchCardState extends State<MatchCardView> {
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                "Titlu",
                textAlign: TextAlign.start,
              ),
              Text(
                "Competition",
                textAlign: TextAlign.end,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                "Side 1",
                textAlign: TextAlign.start,
              ),
              Icon(Icons.restaurant),
              Text(
                "Side 2",
                textAlign: TextAlign.end,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: RaisedButton(
            color: Colors.grey,
            onPressed: () {},
            elevation: 5.0,
          ),
        )
      ],
    ));
  }
}
