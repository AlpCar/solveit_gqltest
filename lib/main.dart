import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:solveit_mentors/Components/Config.dart';


import 'Screens/WelcomeScreen.dart';
import 'TestScreen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      theme: ThemeData.light().copyWith(
          primaryColor: const Color(0xffeebb4d),
          scaffoldBackgroundColor: const Color(0xffe3dfc8)),
      debugShowCheckedModeBanner: false,
      home: GraphQLProvider(
        client: Config.initClient(),
        child: WelcomeScreen(),
      ),
      initialRoute: WelcomeScreen.getId(),
      routes: {
        WelcomeScreen.getId(): (context) => const WelcomeScreen(),
        TestScreen.getId(): (context) =>  TestScreen(),
      },
    );
  }
}

