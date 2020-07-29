import 'package:fast_spectator/commons/bloc.dart';
import 'package:fast_spectator/model/match_info.dart';
import 'package:fast_spectator/repository/match_info_data_source.dart';
import 'package:rxdart/rxdart.dart';

class MatchInfoBloc implements Bloc {
  MatchInfoDataSource _matchInfoDataSource;

  final _matchInfoSubject = PublishSubject<List<MatchInfo>>();

  Observable<List<MatchInfo>> get matchInfo => _matchInfoSubject.stream;

  MatchInfoBloc(MatchInfoDataSource matchInfoDataSource) {
    _matchInfoDataSource = matchInfoDataSource;
  }

  void requestMatchInfo() async {
    List<MatchInfo> matchInfoResponse =
        await _matchInfoDataSource.retrieveMatchInfo();
    _matchInfoSubject.sink.add(matchInfoResponse);
  }

  @override
  void dispose() {
    _matchInfoSubject.close();
  }
}
