import 'package:flutter/src/material/data_table.dart';

class Autogenerated {
  List<States> states;
  int ttl;
  Autogenerated.fromJson(Map<String, dynamic> json) {
    if (json['states'] != null) {
      states = new List<States>();
      json['states'].forEach((v) {
        states.add(new States.fromJson(v));
      });
    }
    ttl = json['ttl'];
  }
}

class States {
  int stateId;
  String stateName;
  States.fromJson(Map<String, dynamic> json) {
    stateId = json['state_id'];
    stateName = json['state_name'];
  }
}