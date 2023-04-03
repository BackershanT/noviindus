import 'package:flutter/material.dart';
import 'package:noviindus/src/app_theme/appcolors.dart';

class AppTheme{
  static final colors=AppColor();
  static ThemeData define(){
    return ThemeData(
      primaryColor: const Color(0XFFCC0000),
      focusColor: const Color(0XFFFFFFFF),
      scaffoldBackgroundColor: const Color(0XFFF5F5F5),
    );
  }
}