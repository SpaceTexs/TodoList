import 'package:flutter/material.dart' hide Title;
import 'package:todo_list/screens/home/components/category_list.dart';
import 'package:todo_list/shared/components/subtitle.dart';
import 'package:todo_list/shared/components/title.dart';
import 'package:todo_list/shared/layouts/Top_bar.dart';
import 'package:todo_list/constantes.dart';
import 'package:velocity_x/velocity_x.dart';

import 'task_list.dart';

class Home extends StatelessWidget {
  //const Home({Key? key}) : super(key: key);
  //Home createState() => Home();
  // List<Task> tasks = [];
  bool isMenuOpen = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          AnimatedPositioned(
            duration: Duration(milliseconds: 750),
            curve: Curves.easeInOut,
            width: size.width,
            height: size.height,
            left: isMenuOpen ? 350 : 0,
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TopBar(
                    onToggleMenu: () {
                      // setState(() {
                      //    this.isMenuOpen = !this.isMenuOpen;
                      //  });
                      print('object');
                    },
                  ),
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
            )
                .box
                .border(color: Vx.red500, width: 5)
                .withRounded(value: 5)
                .make(),
          ),
        ],
      ),
    );
  }
}
