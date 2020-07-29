class MatchInfo {
  String _title;
  String _embed;
  String _url;
  String _thumbnail;
  String _date;
  Side _side1;
  Side _side2;
  Competition _competition;
  List<Video> _videos;

  MatchInfo();

  String get title => _title;

  set title(String value) {
    _title = value;
  }

  String get embed => _embed;

  set embed(String value) {
    _embed = value;
  }

  String get url => _url;

  set url(String value) {
    _url = value;
  }

  String get thumbnail => _thumbnail;

  set thumbnail(String value) {
    _thumbnail = value;
  }

  String get date => _date;

  set date(String value) {
    _date = value;
  }

  Side get sideOne => _side1;

  set sideOne(Side value) {
    _side1 = value;
  }

  Side get sideTwo => _side2;

  set sideTwo(Side value) {
    _side2 = value;
  }

  Competition get competition => _competition;

  set competition(Competition value) {
    _competition = value;
  }

  List<Video> get videos => _videos;

  set videos(List<Video> value) {
    _videos = value;
  }
}

class Side {
  String name;
  String url;
}

class Competition {
  String name;
  int id;
  String url;
}

class Video {
  String title;
  String embed;
}
