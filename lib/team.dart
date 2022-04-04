import 'package:flutter/material.dart';
import 'package:ftracking/home.dart';

class Team extends StatelessWidget {
  UserData argument;
  Team(this.argument);
  @override
  Widget build(BuildContext context) => WillPopScope(child: MaterialApp(
    title: "Phòng của bạn",
    theme: ThemeData(
      primarySwatch: Colors.indigo,
    ),
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: BackButton(
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('Xin chào ' + argument.userName),
      ),
      body: Center(
        child: Text('Room management', style: TextStyle(fontSize: 30),),
      ),
    ),
  ), onWillPop: () async {
    return true;
  });
}