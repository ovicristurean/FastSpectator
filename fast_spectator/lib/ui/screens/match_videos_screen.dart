import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';

class MatchVideoScreen extends StatelessWidget {
  String _div;

  MatchVideoScreen(String div) {
    _div = div;
  }

  @override
  Widget build(BuildContext context) {
    /*return Container(
        child: WebView(
      initialUrl: Uri.dataFromString(extractIframe(_div), mimeType: 'text/html')
          .toString(),
      javascriptMode: JavascriptMode.unrestricted,`
    ));*/
    return Center(
      child: Lottie.network(
          "https://assets10.lottiefiles.com/private_files/lf30_l8c8UB.json"),
    );
  }

  String extractIframe(String div) {
    List<String> splitByIframe = div.split("<iframe");
    List<String> splitByEndIframe = splitByIframe[1].split("<\/iframe>");

    return "<iframe" + splitByEndIframe[0] + "<\/iframe>";
  }
}
