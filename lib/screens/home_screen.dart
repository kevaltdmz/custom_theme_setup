import 'package:custom_theme_setup/constants/app_colors.dart';
import 'package:custom_theme_setup/constants/themes.dart';
import 'package:custom_theme_setup/general_widgets/build_circle_for_theme_selection.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.liteScaffoldColor,
      appBar: AppBar(
        title: const Text('Flutter Theme setup Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Select theme color of the app'),
            GridView.builder(
              itemCount: Themes.listOfUiThemes.length,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 7,
              ),
              itemBuilder: (context, index) {
                final themeColor = Themes.listOfUiThemes[index];
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 2.sp),
                  child: BuildCircleForThemeSelection(themeColor: themeColor),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
