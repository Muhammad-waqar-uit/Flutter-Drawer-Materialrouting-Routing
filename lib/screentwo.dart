import 'package:drawerapp/homescreen.dart';
import 'package:drawerapp/thirdscreen.dart';
import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  static const String id = 'Screentwo';

  const ScreenTwo({Key? key}) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Column(
        children: [
          Text('Hello'),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context,ThirdScreen.id);
                // Navigator.pop(context);
              },
              child: Text('ThirdScreen'))
        ],
      ),
    );
  }
}
