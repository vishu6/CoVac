import 'package:flutter/material.dart';

import 'cookie_detail.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 6.0,
        color: Colors.transparent,
        elevation: 9.0,
        clipBehavior: Clip.antiAlias,
        child: Container(
            height: 50.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0)
                ),
                color: Colors.white
            ),
            child:
                  Container(
                      height: 50.0,
                    //  width: MediaQuery.of(context).size.width /2 - 40.0,
                      child:
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shadowColor: Colors.black,
                                primary: Color(0xFFF17532),
                                elevation: 4.0
                            ),
                            child: Text("Search using Pincode"),
                            onPressed: () => {
                              Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) => CookieDetail(
                                      cookiename: 'name'
                                  )))}
                        ),
                  ),
        )
    );
  }
}