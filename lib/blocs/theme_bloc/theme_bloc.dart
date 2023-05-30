import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:custom_theme_setup/constants/app_colors.dart';
import 'package:custom_theme_setup/constants/status_constants.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'theme_event.dart';

part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(const ThemeState()) {
    on<ChangeThemeRequested>(_onChangeThemeRequested);
  }

  FutureOr<void> _onChangeThemeRequested(
    ChangeThemeRequested event,
    Emitter<ThemeState> emit,
  ) {
    emit(state.copyWith(status: Status.inProgress));
    emit(
      state.copyWith(
        status: Status.success,
        currentThemeColor: event.themeColor,
      ),
    );
  }
}
