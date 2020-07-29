import 'package:fast_spectator/bloc/match_info_bloc.dart';
import 'package:fast_spectator/di/provider_module.dart';
import 'package:fast_spectator/model/match_info.dart';
import 'package:fast_spectator/repository/match_info_data_source.dart';
import 'package:fast_spectator/ui/view/view_match_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecentMatchesScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    MatchInfoDataSource matchInfoDataSource =
        ProviderModule.provideMatchDataSource(
            ProviderModule.provideMatchInfoRequest(
                ProviderModule.provideMatchMapper()));
    final MatchInfoBloc _matchInfoBloc = MatchInfoBloc(matchInfoDataSource);
    return RecentMatchesState(_matchInfoBloc);
  }
}

class RecentMatchesState extends State<RecentMatchesScreen> {
  MatchInfoBloc _matchInfoBloc;

  RecentMatchesState(MatchInfoBloc matchInfoBloc) {
    _matchInfoBloc = matchInfoBloc;
  }

  @override
  Widget build(BuildContext context) {
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
                itemCount: 55);
          } else {
            return Center(
              child: Text("No matches found"),
            );
          }
        });
  }
}
