import 'package:flutter/material.dart';
import 'package:noviindus/src/app_theme/colors.dart';

class BusCard extends StatelessWidget {
  final Function()? onTap;
  final String title;
  final String subtitle;
  final String title2;
  final Image logo;

  const BusCard(
      {Key? key,
      this.onTap,
      required this.title,
      required this.subtitle,
      required this.title2, required this.logo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          height: 74,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            // border: Border.all(color: AppTheme.colors.smallContainer),
            borderRadius: BorderRadius.circular(10),
            color: AppTheme.colors.white,
          ),
          child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 79,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10)),
                    color: AppTheme.colors.smallContainer,
                  ),
                  child:logo,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14.0, top: 21),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            title,textAlign: TextAlign.start,
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: AppTheme.colors.text1),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            subtitle,
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: AppTheme.colors.text1),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 19.0, left: 100),
                  child: InkWell(
                    onTap: onTap,
                    child: Container(
                      height: 30,
                      width: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppTheme.colors.red),
                      child: Center(
                          child: Text(
                        title2,
                        style: TextStyle(
                            fontSize: 10,
                            color: AppTheme.colors.white,
                            fontWeight: FontWeight.w400),
                      )),
                    ),
                  ),
                )
              ]),
        ),
      ),
    );
    ;
  }
}
