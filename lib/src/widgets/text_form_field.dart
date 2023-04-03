import 'package:flutter/material.dart';
import 'package:noviindus/src/app_theme/colors.dart';

class UsersText extends StatelessWidget {
  final controller;
  final  keyboardType;
  final  textInputAction;
  final String hintText;
  final bool obscureText;
  const UsersText({Key? key, this.controller, required this.hintText, required this.obscureText, this.keyboardType, this.textInputAction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(height:58,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
borderRadius: BorderRadius.circular(15)          ,
        color:Colors.grey.shade300,

      ),

      child: Center(
        child: TextField(
          textAlign: TextAlign.center,
          cursorColor: AppTheme.colors.textfieldtext,
          controller:controller ,
          keyboardType: keyboardType,
          textInputAction: textInputAction,
          obscureText: obscureText,
          decoration: InputDecoration(
            border: InputBorder.none,


            hintText: hintText,
            hintStyle: TextStyle(color: AppTheme.colors.textfieldtext),
          ),
        ),
      ),
    );
  }
}
