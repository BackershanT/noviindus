import 'package:flutter/material.dart';
import 'package:noviindus/src/app_theme/colors.dart';
import 'package:noviindus/src/widgets/submit-button.dart';
import 'package:noviindus/src/widgets/text_form_field.dart';

class AddDriver extends StatefulWidget {
  const AddDriver({Key? key}) : super(key: key);

  @override
  State<AddDriver> createState() => _AddDriverState();
}

class _AddDriverState extends State<AddDriver> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Add Driver'),
          backgroundColor: AppTheme.colors.black,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 39, left: 25, right: 25),
              child: UsersText(hintText: 'Enter Name', obscureText: false),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18, left: 25, right: 25),
              child: UsersText(
                  hintText: 'Enter License Number', obscureText: false),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 50.0),
              child: SubmitButton(
                  boxColor: AppTheme.colors.red,
                  fontColor: AppTheme.colors.white,
                  text: 'Save',
                  onTap: () {}),
            )
          ],
        ),
      ),
    );
  }
}
