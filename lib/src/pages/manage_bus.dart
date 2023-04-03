import 'package:flutter/material.dart';
import 'package:noviindus/src/app_theme/colors.dart';
import 'package:noviindus/src/pages/driver_list.dart';
import 'package:noviindus/src/widgets/driver_card.dart';

class ManageBus extends StatefulWidget {
  const ManageBus({Key? key}) : super(key: key);

  @override
  State<ManageBus> createState() => _ManageBusState();
}

class _ManageBusState extends State<ManageBus> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.colors.black,
        title: Text('KSRTC SWift Scania P Series'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          DriverCard(title: 'Rohit Sharma', subtitle: 'License No: PJ51519615565855',onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DriverList()));
          }),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 500,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.event_seat_rounded,size:50,color: AppTheme.colors.black,)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(

                      children: [
                        SizedBox(width: 10,),
                        Icon(Icons.event_seat_rounded,size:50,color: AppTheme.colors.red,),
                        SizedBox(width: 10,),
                        Icon(Icons.event_seat_rounded,size:50,color: AppTheme.colors.red,),
                        Spacer(),
                        Icon(Icons.event_seat_rounded,size:50,color: AppTheme.colors.red,),
                        SizedBox(width: 10,),
                        Icon(Icons.event_seat_rounded,size:50,color: AppTheme.colors.red,), SizedBox(width: 10,),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(

                      children: [
                        SizedBox(width: 10,),
                        Icon(Icons.event_seat_rounded,size:50,color: AppTheme.colors.red,),
                        SizedBox(width: 10,),
                        Icon(Icons.event_seat_rounded,size:50,color: AppTheme.colors.red,),
                        Spacer(),
                        Icon(Icons.event_seat_rounded,size:50,color: AppTheme.colors.red,),
                        SizedBox(width: 10,),
                        Icon(Icons.event_seat_rounded,size:50,color: AppTheme.colors.red,), SizedBox(width: 10,),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(

                      children: [
                        SizedBox(width: 10,),
                        Icon(Icons.event_seat_rounded,size:50,color: AppTheme.colors.red,),
                        SizedBox(width: 10,),
                        Icon(Icons.event_seat_rounded,size:50,color: AppTheme.colors.red,),
                        Spacer(),
                        Icon(Icons.event_seat_rounded,size:50,color: AppTheme.colors.red,),
                        SizedBox(width: 10,),
                        Icon(Icons.event_seat_rounded,size:50,color: AppTheme.colors.red,), SizedBox(width: 10,),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(

                      children: [
                        SizedBox(width: 10,),
                        Icon(Icons.event_seat_rounded,size:50,color: AppTheme.colors.red,),
                        SizedBox(width: 10,),
                        Icon(Icons.event_seat_rounded,size:50,color: AppTheme.colors.red,),
                        Spacer(),
                        Icon(Icons.event_seat_rounded,size:50,color: AppTheme.colors.red,),
                        SizedBox(width: 10,),
                        Icon(Icons.event_seat_rounded,size:50,color: AppTheme.colors.red,), SizedBox(width: 10,),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(

                      children: [
                        SizedBox(width: 10,),
                        Icon(Icons.event_seat_rounded,size:50,color: AppTheme.colors.red,),
                        SizedBox(width: 10,),
                        Icon(Icons.event_seat_rounded,size:50,color: AppTheme.colors.red,),
                        Spacer(),
                        Icon(Icons.event_seat_rounded,size:50,color: AppTheme.colors.red,),
                        SizedBox(width: 10,),
                        Icon(Icons.event_seat_rounded,size:50,color: AppTheme.colors.red,), SizedBox(width: 10,),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(

                      children: [
                        SizedBox(width: 10,),
                        Icon(Icons.event_seat_rounded,size:50,color: AppTheme.colors.red,),
                        SizedBox(width: 10,),
                        Icon(Icons.event_seat_rounded,size:50,color: AppTheme.colors.red,),
                        Spacer(),
                        Icon(Icons.event_seat_rounded,size:50,color: AppTheme.colors.red,),
                        SizedBox(width: 10,),
                        Icon(Icons.event_seat_rounded,size:50,color: AppTheme.colors.red,), SizedBox(width: 10,),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
