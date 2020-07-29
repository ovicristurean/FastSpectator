import 'package:fast_spectator/mapper/match_mapper.dart';
import 'package:fast_spectator/model/match_info.dart';
import 'package:fast_spectator/model/request/match_info_request.dart';
import 'package:fast_spectator/model/request/match_info_request_impl.dart';
import 'package:fast_spectator/repository/match_info_data_source.dart';
import 'package:fast_spectator/repository/match_info_repository.dart';
import 'package:fast_spectator/util/constants.dart';
import 'package:http/http.dart';

class ProviderModule {
  static MatchInfoDataSource provideMatchDataSource(
      MatchInfoRequest<MatchInfo> matchInfoRequest) {
    return MatchInfoRepository(matchInfoRequest);
  }

  static MatchInfoRequest<MatchInfo> provideMatchInfoRequest(
      MatchMapper matchMapper) {
    return MatchInfoRequestImpl(Client(), Constants.BASE_URL, matchMapper);
  }

  static MatchMapper provideMatchMapper() {
    return MatchMapper();
  }
}
