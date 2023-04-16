import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:projekaulia/models/berita_model.dart';
import 'package:http/http.dart' as http;

class DashboardProvider with ChangeNotifier {
  int tabaktif = 0;

  void ubahTab(int index) {
    tabaktif = index;
    notifyListeners();
  }
}

class BeritaPanelProvider with ChangeNotifier {
  bool modecari = false;

  void ubahmode() {
    modecari = !modecari;
    notifyListeners();
  }
}


class BeritaLoadDataProvider with ChangeNotifier{
   List<BeritaModel> data = [];

   Future refresh()async{
      final alamat = 'http://api.mediastack.com/v1/news?access_key=3f539d4de6483ac523bb095248f7a41d';
      final hasil = await http.get(Uri.parse(alamat));
      if(hasil.statusCode != 200)return [];

      final obj = jsonDecode(hasil.body);

      data.clear();
      for(var n in obj['data']){
          data.add( BeritaModel.fromMap(n) );
      }
      notifyListeners();
   }
}