part of 'theme_bloc.dart';

class ThemeState extends Equatable {
  const ThemeState({
    this.status = Status.initial,
    required this.currentTheme,
    this.errorMessage = '',
  });

  final Status status;
  final ThemeData currentTheme;
  final String errorMessage;

  ThemeState copyWith({
    Status? status,
    ThemeData? currentTheme,
    String? errorMessage,
  }) {
    return ThemeState(
      status: status ?? this.status,
      currentTheme: currentTheme ?? this.currentTheme,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object> get props => [
        status,
        currentTheme,
        errorMessage,
      ];
}
