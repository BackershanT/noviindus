import 'package:flutter/material.dart';
import 'package:noviindus/src/app_theme/colors.dart';

class MainCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final Image logo;
  final color;
  const MainCard(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.logo, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 176,
      width: 158,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 7, 0, 0),
            child: Row(
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                      color: AppTheme.colors.white),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 7, 0, 0),
            child: Row(
              children: [
                Text(
                  subtitle,
                  style: TextStyle(color: AppTheme.colors.white, fontSize: 10),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 53,),
            child: logo,
          )
        ],
      ),
    );
  }
}
