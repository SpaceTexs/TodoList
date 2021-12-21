// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo_list/shared/layouts/Top_bar.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:todo_list/constantes.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopBar(),
            Padding(
              padding: EdgeInsets.all(k.defaulPadding),
              child:
                  Text("What's up,Joy!").text.xl4.extraBold.blueGray800.make(),
            ),
            Subtitle(text: 'Categories'),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: k.defaulPadding),
              child: Container(
                  width: 250,
                  padding: EdgeInsets.symmetric(
                      horizontal: k.defaulPadding, vertical: k.defaulPadding),
                  decoration: BoxDecoration(
                      color: Vx.white,
                      borderRadius: BorderRadius.circular(24),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 10,
                          spreadRadius: -10,
                          color: Vx.gray500.withOpacity(0.1),
                        ),
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      '40 tasks'.text.make(),
                      'Business'.text.make(),
                    ],
                  )),
            ),
            SizedBox(height: k.defaulPadding),
            Subtitle(text: 'Today\'s Tasks'),
          ],
        ),
      ),
    );
  }
}

class Subtitle extends StatelessWidget {
  const Subtitle({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: k.defaulPadding),
      child: text.text.uppercase.xs.bold.color(k.defaultGray).make(),
    );
  }
}
