import 'package:fast_spectator/ui/screens/recent_matches_screen.dart';
import 'package:fast_spectator/util/constants.dart';
import 'package:fast_spectator/util/themes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Fast Spectator',
        theme: ThemeData(
          primaryColor: Themes.PrimaryColor,
          primaryColorDark: Themes.DarkPrimaryColor,
          primaryColorLight: Themes.LightPrimaryCOlor,
          accentColor: Themes.ColorAccent,
          primaryTextTheme: TextTheme(
            headline1: TextStyle(color: Themes.PrimaryText),
          ),
          dividerColor: Themes.DividerColor,
          textTheme: TextTheme(
            headline1: TextStyle(color: Themes.Text),
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MyHomePage(title: Constants.APP_BAR_TITLE));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: RecentMatchesScreen(),
    );
  }
}
