import 'package:flutter/material.dart';
import 'package:todo_list/screens/home/category_item.dart';
import 'package:todo_list/screens/home/components/category_list.dart';
import 'package:todo_list/shared/components/subtitle.dart';
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
            Title(
              text: "What's up,Joy!",
            ),
            Subtitle(text: 'Categories'),

            // SizedBox(
            //   height: k.defaulPadding / 2,
            //  ),

            ///foi criado os box e colocados em um listview horizontal
            CategoryList(),
            SizedBox(height: k.defaulPadding),
            Subtitle(text: 'Today\'s Tasks'),
          ],
        ),
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(k.defaulPadding),
      child: text.text.xl4.extraBold.blueGray800.make(),
    );
  }
}
