import 'package:calculator/best_calculator/best_currency/best_currency_model/best_currency_model.dart';
import 'package:calculator/best_calculator/main_page.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';
late Box box;
late Box box1;
void main() async{
  await Hive.initFlutter();
  Hive.registerAdapter<BestCurrencyModel>(BestCurrencyModelAdapter());
  box = await Hive.openBox("calculatorBest");
  box1 = await Hive.openBox("settingsBox");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,      
      // title: 'Flutter Demo',
      // theme: ThemeData(
      //   // This is the theme of your application.
      //   //
      //   // Try running your application with "flutter run". You'll see the
      //   // application has a blue toolbar. Then, without quitting the app, try
      //   // changing the primarySwatch below to Colors.green and then invoke
      //   // "hot reload" (press "r" in the console where you ran "flutter run",
      //   // or simply save your changes to "hot reload" in a Flutter IDE).
      //   // Notice that the counter didn't reset back to zero; the application
      //   // is not restarted.
      //   primarySwatch: Colors.blue,
      // ),
      theme: ThemeData( textTheme: GoogleFonts.interTextTheme(),),
      home: MainPage(bestController: 'Enter a String'),
    );
  }
}
