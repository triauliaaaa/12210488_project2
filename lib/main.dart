import 'package:flutter/material.dart';
import 'package:projekaulia/login_view.dart';
import 'package:process/process.dart';
import 'package:projekaulia/providers/dashboard_provider.dart';
import 'package:projekaulia/views/dashboard/berita_panel.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (bc) => DashboardProvider()),
        ChangeNotifierProvider(create: (bc) => BeritaPanelProvider()),
        ChangeNotifierProvider(create: (bc) => BeritaLoadDataProvider()),
      ],
      builder: (context, widget) {
        return MaterialApp(
          theme: ThemeData(
              appBarTheme: AppBarTheme(backgroundColor: Colors.orange)),
          home: LoginLiat(),
        );
      }));
}
