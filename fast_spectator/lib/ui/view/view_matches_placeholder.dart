import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MatchesPlaceholderView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Lottie.asset("assets/loading-flip.json"),
        Text("Loading most recent matches..."),
      ],
    );
  }
}
