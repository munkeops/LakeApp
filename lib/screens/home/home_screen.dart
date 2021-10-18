import 'package:flutter/material.dart';
import 'package:my_app/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    ); //Scaffold
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: const Icon(
        Icons.menu,
        size: 30,
      ),
    );
    // );
  }
}
