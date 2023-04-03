import 'package:flutter/material.dart';
import 'package:noviindus/src/app_theme/colors.dart';
import 'package:noviindus/src/pages/login_page.dart';
import 'package:noviindus/src/widgets/submit-button.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.red,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(85, 375, 85, 0),
            child: Image.asset('assets/images/moovbe.png'),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 320, 50, 50),
            child: SubmitButton(
              boxColor: AppTheme.colors.white,
              text: 'Get Started',
fontColor: AppTheme.colors.red,
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => LoginPage()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
