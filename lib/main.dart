import 'package:allinoneeducation/home/provider/home_provider.dart';
import 'package:allinoneeducation/home/view/home_screen.dart';
import 'package:allinoneeducation/second/view/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeProvider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) =>HomeScreen(),
          'second':(context) => SecondScreen(),
        },
      ),
    ),
  );
}
