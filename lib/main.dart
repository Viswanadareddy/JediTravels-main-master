import 'package:flutter/material.dart';
import 'package:loginout/payments.dart';
import 'package:loginout/screens/home/home_screen.dart';
import 'package:loginout/splashscreen.dart';
import 'about.dart';
import 'dashboard.dart';
import 'start.dart';
import 'login.dart';
import 'registration.dart';
import 'onboarding.dart';
import 'settings.dart';
import 'profile.dart';
import 'terms_conditions.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hotel Booking',
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyScrollBehaviour(),
      routes: {
        'settings': (context) => Setting(),
        'dashboard': (context) => Dashboard(),
        'Login': (context) => Login(),
        'start': (context) => StartPage(),
        'Register': (context) => Register(),
        'profile': (context) => Profile(),
        'onboarding': (context) => Onbording(),
        'about': (context) => About(),
        'home': (context) => HomeScreen(),
        'terms_and_conditions': (context) => TermsandConditionsPage(),
      },
      home: Onbording(),
    );
  }
}

class MyScrollBehaviour extends MaterialScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
