part of 'theme_bloc.dart';

class ThemeState extends Equatable {
  const ThemeState({
    this.status = Status.initial,
    this.currentThemeColor = AppColors.dark,
    this.errorMessage = '',
  });

  final Status status;
  final Color currentThemeColor;
  final String errorMessage;

  ThemeState copyWith({
    Status? status,
    Color? currentThemeColor,
    String? errorMessage,
  }) {
    return ThemeState(
      status: status ?? this.status,
      currentThemeColor: currentThemeColor ?? this.currentThemeColor,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object> get props => [
        status,
        currentThemeColor,
        errorMessage,
      ];
}
