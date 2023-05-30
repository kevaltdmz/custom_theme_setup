part of 'theme_bloc.dart';

class ThemeEvent extends Equatable {
  const ThemeEvent();

  @override
  List<Object?> get props => [];
}

class ChangeThemeRequested extends ThemeEvent {
  const ChangeThemeRequested({
    required this.themeColor,
  });

  final Color themeColor;
}
