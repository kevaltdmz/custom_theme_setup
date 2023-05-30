import 'package:custom_theme_setup/constants/themes.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BuildCircleForThemeSelection extends StatelessWidget {
  const BuildCircleForThemeSelection({
    Key? key,
    required this.themeColor,
  }) : super(key: key);

  final Color themeColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        debugPrint('Button is tapped');
        Themes.changeTheme(themeColor: themeColor);
      },
      child: CircleAvatar(
        backgroundColor: themeColor,
        radius: 10.sp,
      ),
    );
  }
}
