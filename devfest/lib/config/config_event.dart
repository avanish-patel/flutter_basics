import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'index.dart';

@immutable
abstract class ConfigEvent extends Equatable {
  ConfigEvent([List props = const <dynamic>[]]) : super(props);
  Future<ConfigState> applyAsync(
      {ConfigState configState, ConfigBloc configBloc});
}

class LoadConfigEvent extends ConfigEvent {
  @override
  String toString() => 'LoadConfigEvent';

  @override
  Future<ConfigState> applyAsync(
      {ConfigState configState, ConfigBloc configBloc}) async {
    try {
      await Future.delayed(Duration(seconds: 2));
      return InConfigState();
    } catch (_, stackTrace) {
      print("$_ $stackTrace");
      return ErrorConfigState(_?.toString());
    }
  }
}
