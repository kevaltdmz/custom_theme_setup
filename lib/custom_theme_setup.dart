import 'package:custom_theme_setup/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

import 'blocs/theme_bloc/theme_bloc.dart';

class CustomThemeSetUp extends StatelessWidget {
  const CustomThemeSetUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeBloc(),
      lazy: false,
      child: Sizer(
        builder: (context, orientation, deviceType) {
          return BlocBuilder<ThemeBloc, ThemeState>(
            buildWhen: (previous, current) =>
                previous.status != current.status ||
                previous.currentTheme != current.currentTheme,
            builder: (context, state) {
              return MaterialApp(
                title: 'Flutter Theme Setup Demo',
                theme: state.currentTheme,
                home: const HomeScreen(),
              );
            },
          );
        },
      ),
    );
  }
}
