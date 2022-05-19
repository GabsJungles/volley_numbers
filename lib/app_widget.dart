import 'package:flutter/material.dart';

import 'home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VolleyNumbers',
      theme: ThemeData(
        backgroundColor: Colors.orange,
      ),
      home: const MyHomePage(title: 'Volley Numbers'),
    );
  }
}
