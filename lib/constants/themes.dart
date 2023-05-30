import 'package:custom_theme_setup/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Themes {
  Themes._();

  static final listOfUiThemes = [
    AppColors.dark,
    AppColors.lite,
    AppColors.lime,
    AppColors.red,
    AppColors.pink,
    AppColors.grey,
    AppColors.green,
    AppColors.blue,
    AppColors.cyan,
  ];

  static changeTheme({required Color themeColor}) {
    return _buildThemeFromColorScheme(colorScheme: ColorScheme.fromSeed(seedColor: themeColor));
  }

  static final darkTheme = _buildThemeFromColorScheme(
      colorScheme: ColorScheme.fromSeed(seedColor: AppColors.dark));

  static ThemeData _buildThemeFromColorScheme({
    required ColorScheme colorScheme,
  }) {
    return ThemeData.from(
      colorScheme: colorScheme,
    ).copyWith(
      useMaterial3: true,
      appBarTheme: AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle.light.copyWith(
          statusBarColor: Colors.transparent,
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: colorScheme.onBackground,
        foregroundColor: colorScheme.background,
      ),
      cardTheme: CardTheme(
        elevation: 8,
        shadowColor: Colors.black26,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
