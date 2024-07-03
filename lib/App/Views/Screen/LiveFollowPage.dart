import 'package:flutter/material.dart';

class LiveFollScreen extends StatefulWidget {
  const LiveFollScreen({Key? key}) : super(key: key);

  @override
  State<LiveFollScreen> createState() => _LiveFollScreenState();
}

class _LiveFollScreenState extends State<LiveFollScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) {
          return Card(
            child: Container(
              child: ListTile(
                leading:  CircleAvatar(
                  radius: 30,
                  //child: Icon(Icons.lock),
                  backgroundImage: AssetImage('assets/images/messi.jpg'),
                ),
                title:Text('karim'),
                subtitle: Text("thank you"),

              ),
            ),
          );
        },
      ),





    );
  }
}
