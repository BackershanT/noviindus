import 'package:flutter/material.dart';
import 'package:noviindus/src/app_theme/colors.dart';

class SubmitButton extends StatelessWidget {
  final  fontColor;
  final boxColor;
  final String text;
  final Function() onTap;
  const SubmitButton({Key? key, required this.text, required this.onTap,  this.fontColor, this.boxColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 58,
        width: 316,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: boxColor,
        ),
        child: Center(child: Text(text,style: TextStyle(color: fontColor,fontSize: 20,),)),
      ),
    );
  }
}
