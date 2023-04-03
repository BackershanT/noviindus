import 'package:flutter/material.dart';
import 'package:noviindus/src/app_theme/colors.dart';
import 'package:noviindus/src/pages/home.dart';
import 'package:noviindus/src/providers/auth_provider.dart';
import 'package:noviindus/src/widgets/submit-button.dart';
import 'package:noviindus/src/widgets/text_form_field.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppTheme.colors.white,
        body: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 330,
              decoration: BoxDecoration(
                color: AppTheme.colors.black,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 189,
                      left: 30,
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Welcome',
                          style: TextStyle(
                              color: AppTheme.colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 41),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 52.0, top: 20, left: 30),
                    child: Row(
                      children: [
                        Text(
                          'Manage your Bus and Drivers ',
                          style: TextStyle(
                            color: AppTheme.colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 30, 30, 8.0),
              child: UsersText(
                controller: emailController,
                hintText: 'Enter Username',
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
                obscureText: false,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 17, 30, 8.0),
              child: UsersText(
                controller: passwordController,
                hintText: 'Enter Password',
                obscureText: false,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 200.0, bottom: 50),
              child: authProvider.loading? CircularProgressIndicator(): SubmitButton(
                boxColor: AppTheme.colors.red,
                text: 'Login',
                fontColor: AppTheme.colors.white,
                onTap: () {
                  Provider.of<AuthProvider>(context,listen: false).login(emailController.text.toString(),passwordController.text.toString());

                  // authProvider.login(emailController.text.toString(),
                  //     passwordController.text.toString());
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
