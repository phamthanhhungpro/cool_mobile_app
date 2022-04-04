import 'package:flutter/material.dart';
import 'package:ftracking/route.dart' as route;
import 'package:ftracking/team.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: route.controller,
        title: 'Team Tracking GPS',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        home: new Home());
  }
}
class UserData {
  String userName = "";
  int age = 18;
}
class Home extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    // Khai báo biến
    var userName = "";

    // Các hàm xử lý

    // chuyển sang màn hình tiếp theo
    _nextScreen() {
      print(userName);
      var arg = new UserData();
      arg.userName = userName;
      arg.age = 20;
      Navigator.push(context, MaterialPageRoute(builder: (context) => new Team(arg)));
    }
    // Giao diện màn hình
    return Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                width: 600,
                height: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/home_signin.png')
                      )
                  ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 10, left: 10),
                child: TextField(
                  onChanged: (text) {
                    userName = text;
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 2),
                          borderRadius: const BorderRadius.all(
                              const Radius.circular(30)
                          )
                      ),
                      prefixIcon: Icon(Icons.person,
                        color: Colors.red
                      ),
                      hintText: 'User Name',
                      filled: true,
                      fillColor: Colors.white
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    onPrimary: Colors.white,
                    shadowColor: Colors.greenAccent,
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28.0)),
                    minimumSize: Size(100, 50),
                  ),
                  onPressed: () {
                    _nextScreen();
                  },
                  child: Icon(Icons.arrow_right_alt,
                  size: 42,),
                ),
              ),

          ])
        )
      );
  }
}