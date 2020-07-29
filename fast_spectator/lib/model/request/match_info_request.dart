import 'package:fast_spectator/commons/api_request.dart';

abstract class MatchInfoRequest<MatchInfo> {
  Future<List<MatchInfo>> requestMatches();
}
