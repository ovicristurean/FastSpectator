import 'dart:convert';

import 'package:fast_spectator/mapper/match_mapper.dart';
import 'package:fast_spectator/model/match_info.dart';
import 'package:fast_spectator/model/request/match_info_request.dart';
import 'package:http/http.dart';

class MatchInfoRequestImpl implements MatchInfoRequest<MatchInfo> {
  Client _client;
  String _baseUrl;
  MatchMapper _matchMapper;

  MatchInfoRequestImpl(Client client, String baseUrl, MatchMapper matchMapper) {
    _client = client;
    _baseUrl = baseUrl;
    _matchMapper = matchMapper;
  }

  @override
  Future<List<MatchInfo>> requestMatches() async {
    final response = await _client.get("$_baseUrl");
    print("Response body is " + response.body.toString());
    List<dynamic> decoded = JsonCodec().decode(response.body);

    if (response.statusCode == 200) {
      List<MatchInfo> result = List();

      decoded.forEach((element) {
        MatchInfo info = _matchMapper.map(element);
        result.add(info);
      });

      return result;
    } else {
      throw Exception("Failed to load matches");
    }
  }
}
