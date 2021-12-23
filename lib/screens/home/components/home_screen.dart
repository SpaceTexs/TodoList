import 'package:flutter/material.dart' hide Title;
import 'package:todo_list/screens/home/components/category_list.dart';
import 'package:todo_list/shared/components/subtitle.dart';
import 'package:todo_list/shared/components/title.dart';
import 'package:todo_list/shared/layouts/Top_bar.dart';
import 'package:todo_list/constantes.dart';

import 'task_list.dart';

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

            ///foi criado os box e colocados em um listview horizontal
            CategoryList(),
            SizedBox(height: k.defaulPadding),
            Subtitle(text: 'Today\'s Tasks'),
            SizedBox(height: k.defaulPadding / 2),

            TaskList()
          ],
        ),
      ),
    );
  }
}
