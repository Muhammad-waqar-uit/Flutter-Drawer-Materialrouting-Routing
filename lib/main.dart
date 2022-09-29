import 'package:drawerapp/homescreen.dart';
import 'package:drawerapp/screentwo.dart';
import 'package:drawerapp/thirdscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Drawer',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      initialRoute: MyHomeScreen.id,
       routes: {
          MyHomeScreen.id : (context) => MyHomeScreen(),
         ScreenTwo.id:(context)=> ScreenTwo(),
         ThirdScreen.id:(context)=>ThirdScreen(),
        }
        // home: MyHomeScreen(),material route
    );
  }
}

  