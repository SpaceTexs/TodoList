import 'package:flutter/material.dart';
import 'package:todo_list/screens/home/category_item.dart';
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
            Padding(
              padding: EdgeInsets.all(k.defaulPadding),
              child:
                  Text("What's up,Joy!").text.xl4.extraBold.blueGray800.make(),
            ),
            Subtitle(text: 'Categories'),
            SizedBox(
              height: k.defaulPadding / 2,
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: 140,
                minHeight: 30,
              ),
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: [
                  SizedBox(
                    width: k.defaulPadding,
                  ),
                  ...List.generate(
                    5,
                    (index) => Row(
                      children: [
                        CategoryItem(),
                        SizedBox(width: k.defaulPadding),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: k.defaulPadding),
            Subtitle(text: 'Today\'s Tasks'),
          ],
        ),
      ),
    );
  }
}
