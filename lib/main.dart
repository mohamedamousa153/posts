import 'package:flutter/material.dart';

import 'secreens/dataScreen.dart';

void main() {
  // main point

  runApp(MyApp()); //
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) // manager (main method)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: dataScreen(),
    );
  }
}
