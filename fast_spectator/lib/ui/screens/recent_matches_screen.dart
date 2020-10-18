import 'package:fast_spectator/bloc/match_info_bloc.dart';
import 'package:fast_spectator/di/inherited_match_bloc.dart';
import 'package:fast_spectator/model/match_info.dart';
import 'package:fast_spectator/ui/view/view_match_card.dart';
import 'package:fast_spectator/ui/view/view_matches_placeholder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecentMatchesScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RecentMatchesState();
}

class RecentMatchesState extends State<RecentMatchesScreen> {
  @override
  Widget build(BuildContext context) {
    MatchInfoBloc _matchInfoBloc = InheritedBloc.of(context).matchInfoBloc;
    _matchInfoBloc.requestMatchInfo();
    return StreamBuilder<List<MatchInfo>>(
        stream: _matchInfoBloc.matchInfo,
        builder: (context, AsyncSnapshot<List<MatchInfo>> snapshot) {
          if (snapshot.hasData) {
            return ListView.separated(
                itemBuilder: (context, index) {
                  return MatchCardView(snapshot.data[index]);
                },
                separatorBuilder: (BuildContext context, int index) =>
                    Divider(),
                itemCount: snapshot.data.length);
          } else {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MatchesPlaceholderView(),
              ],
            );
          }
        });
  }
}
