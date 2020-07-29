import 'package:fast_spectator/mapper/mapper.dart';
import 'package:fast_spectator/model/match_info.dart';

class MatchMapper extends Mapper<MatchInfo> {
  @override
  MatchInfo map(Map<String, dynamic> parsedJson) {
    MatchInfo result = MatchInfo();
    result.title = parsedJson["title"];
    result.embed = parsedJson["embed"];
    result.url = parsedJson["url"];
    result.thumbnail = parsedJson["thumbnail"];
    result.date = parsedJson["date"];

    Map<String, dynamic> sideOneJson = parsedJson["side1"];
    result.sideOne = getSide(sideOneJson);

    Map<String, dynamic> sideTwoJson = parsedJson["side2"];
    result.sideTwo = getSide(sideTwoJson);

    List<dynamic> videosJson = parsedJson["videos"];
    result.videos = getVideos(videosJson);

    return result;
  }

  Side getSide(Map<String, dynamic> json) {
    Side side = Side();
    side.name = json["name"];
    side.url = json["url"];
    return side;
  }

  List<Video> getVideos(List<dynamic> videosList) {
    List<Video> videos = List();
    videosList.forEach((element) {
      videos.add(getVideoFromJson(element));
    });

    return videos;
  }

  Video getVideoFromJson(Map<String, dynamic> videoJson) {
    Video video = Video();
    video.title = videoJson["title"];
    video.embed = videoJson["embed"];

    return video;
  }
}
