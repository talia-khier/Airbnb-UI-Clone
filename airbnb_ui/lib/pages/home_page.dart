import 'package:airbnb_ui/widgets/city_widgets.dart';
import 'package:airbnb_ui/widgets/header.dart';
import 'package:airbnb_ui/widgets/hero_banner.dart';
import 'package:airbnb_ui/widgets/live_anywhere_widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const <Widget>[
          CustomScrollView(
            slivers: <Widget>[
              HeroBanner(),
              Header(text: "Explore Nearby"),
              CitiesGrid(),
              Header(text: "Live AnyWhere"),
              LiveAnyWhereList()
            ],
          )
        ],
      ),
    );
  }
}
