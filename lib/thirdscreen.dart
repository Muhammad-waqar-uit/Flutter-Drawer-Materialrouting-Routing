import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  static const String id = 'thirdscreen';
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ThirdScreen'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: ListView.builder(
              itemCount: 100
              ,itemBuilder: (context,index){
                return  ListTile(
                  leading: Icon(Icons.email),
                  title: Text('page2'),
                  onTap: (){
                    Navigator.pushNamed(context, ThirdScreen.id);
                  },
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
