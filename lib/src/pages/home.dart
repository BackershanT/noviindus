import 'package:flutter/material.dart';
import 'package:noviindus/src/app_theme/colors.dart';
import 'package:noviindus/src/pages/manage_bus.dart';
import 'package:noviindus/src/widgets/bus_card.dart';
import 'package:noviindus/src/widgets/main_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: AppTheme.colors.black,
          leading: Container(),
          title: Image.asset('assets/images/moovbe.png'),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 19,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MainCard(
                  color: AppTheme.colors.red,
                  title: 'Bus',
                  logo: Image.asset(
                    'assets/images/bus.png',
                    height: 120,
                    width: 100,
                    fit: BoxFit.contain,
                  ),
                  subtitle: 'Manage Your Bus',
                ),
                MainCard(
                  color: AppTheme.colors.black,
                  title: 'Driver',
                  logo: Image.asset(
                    'assets/images/driver.png',
                    height: 120,
                    width: 100,
                    fit: BoxFit.contain,
                  ),
                  subtitle: 'Manage Your Driver',
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 22, left: 18.0),
              child: Row(
                children: [
                  Text(
                    '5 Buses Found',
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: AppTheme.colors.text),
                  ),
                ],
              ),
            ),
            BusCard(title: 'KSRTC', subtitle: 'Swift scania P',onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ManageBus()));
            }, title2: 'Manage', logo:  Image.asset('assets/images/smallbus.png'),),

            BusCard(title: 'KSRTC', subtitle: 'Swift scania P',onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ManageBus()));
            }, title2: 'Manage', logo:  Image.asset('assets/images/smallbus.png'),),

            BusCard(title: 'KSRTC', subtitle: 'Swift scania P',onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ManageBus()));
            }, title2: 'Manage', logo:  Image.asset('assets/images/smallbus.png'),),

            BusCard(title: 'KSRTC', subtitle: 'Swift scania P',onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ManageBus()));
            }, title2: 'Manage', logo:  Image.asset('assets/images/smallbus.png'),),

            BusCard(title: 'KSRTC', subtitle: 'Swift scania P',onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ManageBus()));
            }, title2: 'Manage', logo:  Image.asset('assets/images/smallbus.png'),),
          ],
        ),
      ),
    );
  }
}
