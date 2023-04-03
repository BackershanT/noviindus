import 'package:flutter/material.dart';
import 'package:noviindus/src/app_theme/colors.dart';
import 'package:noviindus/src/pages/add_driver.dart';
import 'package:noviindus/src/widgets/bus_card.dart';
import 'package:noviindus/src/widgets/submit-button.dart';

class DriverList extends StatefulWidget {
  const DriverList({Key? key}) : super(key: key);

  @override
  State<DriverList> createState() => _DriverListState();
}

class _DriverListState extends State<DriverList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Driver List',
            style: TextStyle(color: AppTheme.colors.white),
          ),
          backgroundColor: AppTheme.colors.black,
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 18),
              child: Row(
                children: [
                  Text(
                    '6 Drivers Found',
                    style: TextStyle(
                        color: AppTheme.colors.text1,
                        fontSize: 13,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            BusCard(
              title: 'Rohit Sharma',
              subtitle: 'Lic No: PJ5151',
              title2: 'Delete',
              logo: Image.asset('assets/images/Ellipse.png'),
            ),
            BusCard(
              title: 'Rohit Sharma',
              subtitle: 'Lic No: PJ5151',
              title2: 'Delete',
              logo: Image.asset('assets/images/Ellipse.png'),
            ),

            BusCard(
              title: 'Rohit Sharma',
              subtitle: 'Lic No: PJ5151',
              title2: 'Delete',
              logo: Image.asset('assets/images/Ellipse.png'),
            ),

            BusCard(
              title: 'Rohit Sharma',
              subtitle: 'Lic No: PJ5151',
              title2: 'Delete',
              logo: Image.asset('assets/images/Ellipse.png'),
            ),

            BusCard(
              title: 'Rohit Sharma',
              subtitle: 'Lic No: PJ5151',
              title2: 'Delete',
              logo: Image.asset('assets/images/Ellipse.png'),
            ),
            BusCard(
              title: 'Rohit Sharma',
              subtitle: 'Lic No: PJ5151',
              title2: 'Delete',
              logo: Image.asset('assets/images/Ellipse.png'),
            ),


            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SubmitButton(
                  text: 'Add Driver',
                  boxColor: AppTheme.colors.red,
                  fontColor: AppTheme.colors.white,
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => AddDriver()));
                  }),
            )
          ],
        ),
      ),
    );
  }
}
