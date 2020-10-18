import 'package:fast_spectator/bloc/match_info_bloc.dart';
import 'package:flutter/material.dart';

class InheritedBloc extends InheritedWidget {
  const InheritedBloc({
    Key key,
    @required Widget child,
    this.matchInfoBloc,
  })
      : assert(child != null),
        super(key: key, child: child);

  final MatchInfoBloc matchInfoBloc;

  static InheritedBloc of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedBloc>();
  }

  @override
  bool updateShouldNotify(InheritedBloc old) =>
      old.matchInfoBloc != matchInfoBloc;
}