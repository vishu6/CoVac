import 'package:flutter/material.dart';

import 'cookie_detail.dart';

class CookiePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFFCFAF8),
      body: Column(
        children: <Widget>[
          SizedBox(height: 1.0),
          Container(
              padding: EdgeInsets.only(right: 15.0),
              width: MediaQuery.of(context).size.width - 30.0,
              height: MediaQuery.of(context).size.height -340.0,
              child: GridView.count(
                crossAxisCount: 1,
                primary: false,
                crossAxisSpacing: 1.0,
                mainAxisSpacing: 15.0,
                childAspectRatio: 3.0,
                children: <Widget>[
                  _buildCard('Available sessions', context),
                  _buildCard('District Vaccine availability', context),
                  _buildCard('Vaccination session plan by calendar'
                      , context)
                ],
              )),
          SizedBox(height: 15.0)
        ],
      ),
    );
  }

  Widget _buildCard(String name, context) {
    return Padding(
        padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => CookieDetail(
                      cookiename: name
                  )));
            },
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 3.0,
                          blurRadius: 5.0)
                    ],
                    color: Colors.white),
                height: MediaQuery.of(context).size.height/80,
                child: Column(children: [
                  SizedBox(height: 7.0),
                  Text(name,
                      style: TextStyle(
                          color: Color(0xFF575E67),
                          fontFamily: 'Varela',
                          fontSize: 20.0)),
                ]))));
  }
}