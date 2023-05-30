import 'package:custom_theme_setup/blocs/theme_bloc/theme_bloc.dart';
import 'package:custom_theme_setup/constants/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      onTap: () async {
        debugPrint('Button is tapped');
        var useSelectedThemeData =
            await Themes.changeTheme(themeColor: themeColor);
        context.read<ThemeBloc>().add(
              ChangeThemeRequested(
                theme: useSelectedThemeData,
              ),
            );
      },
      child: CircleAvatar(
        backgroundColor: themeColor,
        radius: 10.sp,
      ),
    );
  }
}
