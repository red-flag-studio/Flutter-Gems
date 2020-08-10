import 'package:facebook_clone/config/palette.dart';
import 'package:facebook_clone/data/data.dart';
import 'package:facebook_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
            headerSliverBuilder: (_, __) => [
                  SliverAppBar(
                    brightness: Brightness.light,
                    backgroundColor: Colors.white,
                    centerTitle: false,
                    floating: false,
                    title: Text(
                      'facebook',
                      style: const TextStyle(
                          color: Palette.facebookBlue,
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                          letterSpacing: -1.2),
                    ),
                    actions: [
                      CircleButton(
                          icon: Icons.search, iconSize: 30, onPressed: () {}),
                      CircleButton(
                          icon: MdiIcons.facebookMessenger,
                          iconSize: 30,
                          onPressed: () {}),
                    ],
                  )
                ],
            body: SingleChildScrollView(
                child: CreatePostContainer(currentUser: currentUser))));
  }
}
