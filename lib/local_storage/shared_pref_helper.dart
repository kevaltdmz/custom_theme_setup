import 'package:custom_theme_setup/constants/shared_preference_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefHelper {
  static final SharedPrefHelper _instance = SharedPrefHelper._internal();
  late final SharedPreferences _preferences;

  factory SharedPrefHelper() {
    return _instance;
  }

  SharedPrefHelper._internal();

  Future<void> init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  Future<void> saveTheme(String currentTheme) async {
    await _preferences.setString(
        SharedPreferenceConstants.keyCurrentThemeName, currentTheme);
  }

  String getTheme() {
    return _preferences
            .getString(SharedPreferenceConstants.keyCurrentThemeName) ??
        'default';
  }
}
