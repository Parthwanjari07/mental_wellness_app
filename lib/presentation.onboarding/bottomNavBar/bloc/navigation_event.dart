import 'package:equatable/equatable.dart';

abstract class NavigationEvent extends Equatable {}

class NavigateTo extends NavigationEvent {
  final int index;
  NavigateTo({required this.index});
  
  @override
  List<Object?> get props => [index];
}