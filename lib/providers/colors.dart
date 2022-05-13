import 'package:flutter/material.dart';

class CustomColors {
  //Main Colors
  static Color backgroundColor = const Color(0xFFFFFFFF);
  static Color primaryColor = const Color(0xFFF04770);
  static Color secondaryColor = const Color(0xFFAC98EF);
  static Color toolbarColor = const Color(0xFFFFFFFF);
  static Color toolbarTextColor = const Color(0xFF000000);
  static Color drawerColor = const Color(0xFFFAFAFA);
  static Color drawerTextColor = const Color(0xFFF04770);
  static Color drawerTrailingTextColor = const Color(0xFFFAFAFA);
  static Color textColor = const Color(0xFF000000);

  //Light Colors
  static Color backgroundColorLight = const Color(0xFFFFFFFF);
  static Color primaryColorLight = const Color(0xFFF04770);
  static Color secondaryColorLight = const Color(0xFFAC98EF);
  static Color toolbarColorLight = const Color(0xFFFFFFFF);
  static Color toolbarTextColorLight = const Color(0xFF000000);
  static Color drawerColorLight = const Color(0xFFFAFAFA);
  static Color drawerTextColorLight = const Color(0xFFF04770);
  static Color drawerTrailingTextColorLight = const Color(0xFFFAFAFA);
  static Color textColorLight = const Color(0xFF000000);

  //Dark Colors
  static Color backgroundColorDark = const Color(0xFF171721);
  static Color primaryColorDark = const Color(0xFF88888A);
  static Color secondaryColorDark = const Color(0xFFAC98EF);
  static Color toolbarColorDark = const Color(0xFF171721);
  static Color toolbarTextColorDark = const Color(0xFFFFFFFF);
  static Color drawerColorDark = const Color(0xFF171721);
  static Color drawerTextColorDark = const Color(0xFF88888A);
  static Color drawerTrailingTextColorDark = const Color(0xFFFAFAFA);
  static Color textColorDark = const Color(0xFFFFFFFF);
}

class ThemeLoader {
  ThemeLoader([bool isDark = false]) {
    if(isDark) {
      CustomColors.backgroundColor = CustomColors.backgroundColorDark;
      CustomColors.primaryColor = CustomColors.primaryColorDark;
      CustomColors.secondaryColor = CustomColors.secondaryColorDark;
      CustomColors.toolbarColor = CustomColors.toolbarColorDark;
      CustomColors.toolbarTextColor = CustomColors.toolbarTextColorDark;
      CustomColors.drawerColor = CustomColors.drawerColorDark;
      CustomColors.drawerTextColor = CustomColors.drawerTextColorDark;
      CustomColors.drawerTrailingTextColor = CustomColors.drawerTrailingTextColorDark;
      CustomColors.textColor = CustomColors.textColorDark;
    } else {
      CustomColors.backgroundColor = CustomColors.backgroundColorLight;
      CustomColors.primaryColor = CustomColors.primaryColorLight;
      CustomColors.secondaryColor = CustomColors.secondaryColorLight;
      CustomColors.toolbarColor = CustomColors.toolbarColorLight;
      CustomColors.toolbarTextColor = CustomColors.toolbarTextColorLight;
      CustomColors.drawerColor = CustomColors.drawerColorLight;
      CustomColors.drawerTextColor = CustomColors.drawerTextColorLight;
      CustomColors.drawerTrailingTextColor = CustomColors.drawerTrailingTextColorLight;
      CustomColors.textColor = CustomColors.textColorLight;
    }
  }
}