import 'package:fast_spectator/model/match_info.dart';
import 'package:fast_spectator/model/request/match_info_request.dart';
import 'package:fast_spectator/repository/match_info_data_source.dart';

class MatchInfoRepository implements MatchInfoDataSource {
  MatchInfoRequest<MatchInfo> _matchInfoRequest;

  MatchInfoRepository(MatchInfoRequest<MatchInfo> matchInfoRequest) {
    _matchInfoRequest = matchInfoRequest;
  }

  @override
  Future<List<MatchInfo>> retrieveMatchInfo() {
    return _matchInfoRequest.requestMatches();
  }
}
