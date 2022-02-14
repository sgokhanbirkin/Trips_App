import 'package:equatable/equatable.dart';
import 'package:trips_app/model/data_model.dart';

abstract class CubitStates extends Equatable {}

class InitialState extends CubitStates {
  @override
  List<Object?> get props => [];
}

class WelcomeState extends CubitStates {
  @override
  List<Object?> get props => [];
}

class HomePageState extends CubitStates {
  @override
  List<Object?> get props => [];
}

/// Loading state
class LoadingState extends CubitStates {
  @override
  List<Object?> get props => [];
}

class LoadedState extends CubitStates {
  LoadedState(this.places);
  final List<DataModel> places;
  @override
  List<Object?> get props => [places];
}

class DetailState extends CubitStates {
  DetailState(this.places);
  final DataModel places;
  @override
  List<Object?> get props => [places];
}
