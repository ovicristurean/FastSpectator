import 'package:fast_spectator/repository/match_info_data_source.dart';
import 'package:flutter/cupertino.dart';

class InheritedDataSource extends InheritedWidget {
  const InheritedDataSource({
    Key key,
    @required Widget child,
    this.matchInfoDataSource,
  })  : assert(child != null),
        super(key: key, child: child);

  final MatchInfoDataSource matchInfoDataSource;

  static InheritedDataSource of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedDataSource>();
  }

  @override
  bool updateShouldNotify(InheritedDataSource old) {
    return old.matchInfoDataSource != matchInfoDataSource;
  }
}
