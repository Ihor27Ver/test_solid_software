// ignore_for_file: avoid_unused_parameters
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_models.freezed.dart';

/// Represents events that can occur in the home page.
/// It uses the freezed package to provide
/// an immutable state management solution.
@freezed
// ignore: prefer_match_file_name
class HomeEvent with _$HomeEvent {
  /// Factory constructor for initializing the home page state.
  factory HomeEvent.init() = HomeEventInit;

  /// Factory constructor for triggering a color change event.
  factory HomeEvent.changeColor() = ChangeColorEvent;
}

/// Represents the state of the home page.
/// Includes properties for background color, text color, and loading status.
/// It leverages freezed for immutable state management.
@freezed
class HomeState with _$HomeState {
  /// Getter to retrieve the data state of the home page.
  HomeStateData get data => this as HomeStateData;

  /// Internal constructor for creating state instances.
  const HomeState._();

  /// Factory constructor for creating a default or specific state.
  /// Allows setting of background color, text color, and loading status,
  /// with default values if not specified
  ///
  factory HomeState.data({
    @Default(Colors.white) Color backgroundColor,
    @Default(Colors.black) Color textColor,
    @Default(false) bool isLoading,
  }) = HomeStateData;
}
