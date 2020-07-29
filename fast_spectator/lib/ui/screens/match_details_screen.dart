import 'package:flutter/cupertino.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MatchDetailsScreen extends StatefulWidget {
  String _url;

  MatchDetailsScreen(String url) {
    _url = url;
  }

  @override
  State<StatefulWidget> createState() {
    return MatchDetailsState(_url);
  }
}

class MatchDetailsState extends State<MatchDetailsScreen> {
  String _url;

  MatchDetailsState(String url) {
    _url = url;
  }

  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: _url,
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}
