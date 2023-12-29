import 'package:flutter/material.dart';
import 'package:todo/screens/route.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.blue),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: Colors.blue, foregroundColor: Colors.white),
        useMaterial3: true),
    initialRoute: AppRoute.splashScreen,
    onGenerateRoute: AppRoute.onGenerateRoute,
    debugShowCheckedModeBanner: false,
  ));
}

