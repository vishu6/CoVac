import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:newapp/Model/PinHospitals.dart';
import 'package:newapp/Model/states.dart';
import 'package:http/http.dart'  as http;

class PinHospitalNameProvider extends ChangeNotifier {
  PinCodeHospital pinHosp;
  String pinCode;
  DateTime date;

  PinHospitalNameProvider({this.pinCode, this.date});

  var queryParameters= {
    'pincode': pinCode,
    'date': date.
  };

  Future getHosp(context) async {
    var uri = Uri.https('https://cdn-api.co-vin.in/api/v2/appointment/sessions/public/', 'findByPin', queryParameters);
    var response = await http.get(uri);
    var hospData = json.decode(response.body);

    this.pinHosp = PinCodeHospital.fromJson(hospData);
    log('response data' + response.body);
    this.notifyListeners();
  }
}
