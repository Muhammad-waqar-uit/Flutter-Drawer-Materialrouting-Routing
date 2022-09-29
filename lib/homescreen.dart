import 'package:drawerapp/screentwo.dart';
import 'package:drawerapp/thirdscreen.dart';
import 'package:flutter/material.dart';

class MyHomeScreen extends StatefulWidget {
  static const String id='Screen';

  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
        children:  [
       UserAccountsDrawerHeader(
       decoration: BoxDecoration(
         color: Colors.amberAccent,
       ),
       currentAccountPicture: CircleAvatar(backgroundImage:NetworkImage('https://images.pexels.com/photos/13739535/pexels-photo-13739535.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),)
       ,accountName: Text('Muhammad Waqar'), accountEmail: Text('Abdul1977ghaffar@gmail'))
        ,ListTile(
          leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: (){
              Navigator.pushNamed(context, ScreenTwo.id);
            },
        ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('page2'),
            onTap: (){
              Navigator.pushNamed(context, ThirdScreen.id);
            },
          ),
          ListTile(
            leading: Icon(Icons.golf_course),
            title: Text('Page3'),
            onTap: (){
              Navigator.pushNamed(context, ScreenTwo.id);
            },
          )
        ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Navigation Drawer'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Center(child: TextButton(onPressed: (){
          Navigator.pushNamed(context, ScreenTwo.id);
          // Navigator.push(context, MaterialPageRoute(builder:(context)=>ScreenTwo()));
        }, child: Text('Button')))
        ],
      ),
    );
  }
}
