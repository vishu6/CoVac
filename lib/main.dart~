import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newapp/Pages/stateData.dart';
import 'package:newapp/corousel_app.dart';

import 'bottom_bar.dart';
import 'cookie_detail.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text('CoVaC',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 25.0,
                color: Color(0xFF545D68))),
      ),
      body:ListView(
        // padding: EdgeInsets.only(left: 20.0),
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height/3,
            child:  CarouselApp(),

          ),
          Container(
            height: MediaQuery.of(context).size.height/2,
            child: StatesApp(),
            padding: EdgeInsets.only(bottom: 45.0),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar:BottomBar(),
    );
  }
}