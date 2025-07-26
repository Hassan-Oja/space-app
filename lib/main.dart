import 'package:flutter/material.dart';
import 'package:space/screens/home_screen.dart';
import 'package:space/screens/login_screen.dart';
import 'package:space/screens/planet_details.dart';
import 'package:space/utils/app_theme.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appTheme,
      initialRoute: LoginScreen.routeName ,
      routes: {
        LoginScreen.routeName : (context)=> LoginScreen(),
        HomeScreen.routeName : (context)=> HomeScreen(),
        PlanetDetails.routeName : (context)=> PlanetDetails(),


      },
    );
  }

}