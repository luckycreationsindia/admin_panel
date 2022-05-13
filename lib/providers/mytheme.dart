import 'package:admin_panel/providers/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NoAnimationPageTransitionsBuilder extends PageTransitionsBuilder {
  const NoAnimationPageTransitionsBuilder();

  @override
  Widget buildTransitions<T>(
    PageRoute<T> route,
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return child;
  }
}

ShapeBorder get shapeMedium => RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    );

/*extension CustomStyles on TextTheme {
  TextStyle get defaultStyle =>
      const TextStyle(decoration: TextDecoration.lineThrough,
          fontSize: 20.0,
          color: Colors.blue,
          fontWeight: FontWeight.bold);
}*/

ThemeData load() {
  return ThemeData(
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: <TargetPlatform, PageTransitionsBuilder>{
        TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.linux: NoAnimationPageTransitionsBuilder(),
        TargetPlatform.macOS: NoAnimationPageTransitionsBuilder(),
        TargetPlatform.windows: NoAnimationPageTransitionsBuilder(),
      },
    ),
    textTheme: GoogleFonts.montserratTextTheme().copyWith(
      headline1: TextStyle(
        color: CustomColors.textColor,
      ),
      bodyText1: TextStyle(
        color: CustomColors.textColor,
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: CustomColors.toolbarColor,
      elevation: 0,
    ),
    cardTheme: CardTheme(
      elevation: 2,
      shape: shapeMedium,
      clipBehavior: Clip.antiAlias,
    ),
    listTileTheme: ListTileThemeData(
      shape: shapeMedium,
      selectedColor: CustomColors.secondaryColor,
    ),
    drawerTheme: DrawerThemeData(
      backgroundColor: CustomColors.drawerColor,
    ),
    scaffoldBackgroundColor: CustomColors.backgroundColor,
    useMaterial3: true,
  );
}
