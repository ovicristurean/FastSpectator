import 'package:fast_spectator/model/match_info.dart';

abstract class MatchInfoDataSource {
  Future<List<MatchInfo>> retrieveMatchInfo();
}
