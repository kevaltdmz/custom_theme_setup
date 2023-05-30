import 'package:custom_theme_setup/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  const AppTheme._();

  static final lightTheme = _buildThemeFromColorScheme(
    ColorScheme.fromSeed(seedColor: AppColors.lite),
  );

  static final darkTheme = _buildThemeFromColorScheme(
    ColorScheme.fromSeed(seedColor: AppColors.dark),
  );

  static ThemeData _buildThemeFromColorScheme(ColorScheme colorScheme) {
    return ThemeData.from(
      colorScheme: colorScheme,
    ).copyWith(
      appBarTheme: AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle.light.copyWith(
          statusBarColor: Colors.transparent,
        ),
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
