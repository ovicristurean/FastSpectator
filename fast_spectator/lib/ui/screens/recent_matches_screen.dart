import 'package:fast_spectator/ui/view/view_match_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecentMatchesScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RecentMatchesState();
  }
}

class RecentMatchesState extends State<RecentMatchesScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return MatchCardView();
        },
        separatorBuilder: (BuildContext context, int index) => Divider(),
        itemCount: 55);
  }
}
