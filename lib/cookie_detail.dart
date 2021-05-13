import 'package:flutter/material.dart';
import 'package:newapp/Pages/PinHospitalNameProvider.dart';
import 'package:newapp/Pages/PinHospitalNameProvider.dart';

class CookieDetail extends StatelessWidget {
  final cookiename;

  final control = TextEditingController();
  @override
  void dispose(){
    control.dispose();
  }
  CookieDetail({this.cookiename});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFFF17532)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text('CovaC',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                color: Color(0xFF545D68))),

      ),

      body: ListView(
          children: [
            SizedBox(height: 15.0),
            Padding(
              padding: EdgeInsets.only(left: 20.0,right: 20.0),
              child: Image.asset(
                'assets/mask1.png',
                height: 192.0,
                fit: BoxFit.cover,
              )
            ),
            SizedBox(height: 10.0),

            Padding(padding: EdgeInsets.only(left: 20.0,right: 20.0),
                child:TextField(
                  controller: control,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'Enter Pin Code',
                    suffixIcon: IconButton(
                      icon: Icon(Icons.search),
                      color: Color(0xFFF17532),
                      onPressed: () => {},
                    )
                  ),
                ),
              ),
            SizedBox(height: 20.0),
            Center(
            ),
            SizedBox(height: 20.0),
            Center(
                child: ListVaccinePinData(control.text,DateTime.now()),
            )
          ]
      ),

    );
  }
}
// ignore: must_be_immutable
class ListVaccinePinData extends StatelessWidget {
  String pinCode;
  DateTime date;

  ListVaccinePinData(this.pinCode, this.date);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children:<Widget> [
          SizedBox(height: 15.0),
          Center(
              child: PinHospitalNameProvider(pinCode,date);
          ),

        ],
      ),
    );
  }

}