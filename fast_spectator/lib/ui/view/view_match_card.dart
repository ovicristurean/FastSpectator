import 'package:fast_spectator/model/match_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MatchCardView extends StatefulWidget {
  MatchInfo _matchInfo;

  MatchCardView(MatchInfo matchInfo) {
    _matchInfo = matchInfo;
  }

  @override
  State<StatefulWidget> createState() {
    return MatchCardState(_matchInfo);
  }
}

class MatchCardState extends State<MatchCardView> {
  MatchInfo _matchInfo;

  MatchCardState(MatchInfo matchInfo) {
    _matchInfo = matchInfo;
  }

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
              Expanded(
                child: Text(
                  _matchInfo.title ?? "",
                  textAlign: TextAlign.start,
                ),
              ),
              Expanded(
                child: Text(
                  _matchInfo.competition?.name ?? "",
                  textAlign: TextAlign.end,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: Text(
                  _matchInfo.sideOne.name ?? "",
                  textAlign: TextAlign.start,
                ),
              ),
              Container(
                  width: 100,
                  height: 100,
                  child: Image.network(_matchInfo.thumbnail)),
              Expanded(
                child: Text(
                  _matchInfo.sideTwo.name ?? "",
                  textAlign: TextAlign.end,
                ),
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
            child: Text("Check highlights"),
          ),
        )
      ],
    ));
  }
}
