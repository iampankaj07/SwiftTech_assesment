import 'package:flutter/material.dart';

class OptionsModel {
  IconData? icon;
  String? name;
  OptionsModel(this.icon, this.name);
}

List<OptionsModel> belowWalletInfoData = [
  OptionsModel(Icons.add, "Add Money"),
  OptionsModel(Icons.send, "Send Money"),
  OptionsModel(Icons.attach_money_outlined, "Receive Remmitance"),
  OptionsModel(Icons.maps_home_work_outlined, "Banking Services"),
];
