import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'package:flutter/services.dart';

class Bible {
  String? ari;
  String? name;
  String? verse;

  Bible({this.ari, this.name, this.verse});

  Bible.fromJson(Map<String, dynamic> json) {
    ari = json['ari'];
    name = json['name'];
    verse = json['verse'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ari'] = this.ari;
    data['name'] = this.name;
    data['verse'] = this.verse;
    return data;
  }
}

Future<String> getJson() async {
  return rootBundle.loadString('kjv.json');
}

void main(List<String> args) async {
  var my_data = json.decode(await getJson());
  print(my_data);
}
