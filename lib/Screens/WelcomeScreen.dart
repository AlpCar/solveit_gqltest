
import 'package:flutter/material.dart';

import '../TestScreen.dart';



class WelcomeScreen extends StatefulWidget {
  static const String _id = 'welcome_screen';

  const WelcomeScreen({Key? key}) : super(key: key);
  static String getId() {
    return _id;
  }

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 20.0),
              Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                ElevatedButton(

                  onPressed: () {
                    Navigator.pushNamed(context, TestScreen.getId());

                  },
                  child: const Text('Login'),
                ),
                const SizedBox(height: 15.0),
                ElevatedButton(

                  onPressed: () {},
                  child: const Text('Register'),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
