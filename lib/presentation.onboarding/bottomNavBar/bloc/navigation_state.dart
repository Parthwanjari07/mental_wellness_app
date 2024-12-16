import 'package:equatable/equatable.dart';

abstract class NavigationState extends Equatable {}

class NavigationChanged extends NavigationState {
  final int index;
  NavigationChanged({required this.index});

  @override
  List<Object?> get props => [index];
}
