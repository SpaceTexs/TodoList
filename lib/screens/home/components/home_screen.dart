// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart' hide Title;
import 'package:todo_list/screens/home/components/category_list.dart';
import 'package:todo_list/shared/components/subtitle.dart';
import 'package:todo_list/shared/components/title.dart';
import 'package:todo_list/shared/layouts/Top_bar.dart';
import 'package:todo_list/constantes.dart';
import 'package:velocity_x/velocity_x.dart';

import 'task_list.dart';

class Home extends StatefulWidget {
  //const Home({Key? key}) : super(key: key);
  //Home createState() => Home();
  // List<Task> tasks = [];
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  bool isMenuOpen = false;
  double pageScale = 1;
  late Animation<double> _animation;
  late AnimationController _controller;
  Duration _duration = Duration(milliseconds: 750);

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(microseconds: 500),
      vsync: this,
    );
    _animation = Tween<double>(begin: 1, end: 0.9)
        .chain(CurveTween(curve: Curves.easeInOut))
        .animate(_controller);
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          buildMenuContent(size),
          buildPageContent(size),
        ],
      ),
    );
  }

  Widget buildMenuContent(Size size) {
    return SafeArea(
      child: Container(
        child: Container(
          width: 100,
          child: Center(
            child: Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'
              'Lorem Ipsum has been the industrys standard dummy text ever since the 1500s,'
              'when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    ).box.color(k.primaryColor).width(size.width).height(size.height).make();
  }

  Widget buildPageContent(Size size) {
    return AnimatedPositioned(
      duration: Duration(milliseconds: 750),
      curve: Curves.easeInOut,
      width: size.width,
      height: size.height,
      left: isMenuOpen ? 330 : 0,
      child: ScaleTransition(
        scale: _animation,
        child: AnimatedContainer(
          decoration: BoxDecoration(
            color: k.defaultBgColor,
            borderRadius: BorderRadius.circular(isMenuOpen ? 52 : 0),
          ),
          duration: isMenuOpen ? Duration(seconds: 0) : _duration,
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TopBar(
                  onToggleMenu: () {
                    setState(() {
                      this.isMenuOpen
                          ? _controller.reverse()
                          : _controller.forward();
                      this.isMenuOpen = !this.isMenuOpen;
                      // pageScale = isMenuOpen ? 0.7 : 1;
                    });
                  },
                ),
                Title(
                  text: "What's up,Joy!",
                ),
                Subtitle(text: 'Categories'),

                ///foi criado os box e colocados em um listview horizontal
                CategoryList(),
                SizedBox(height: k.defaulPadding),
                Row(
                  children: [
                    Subtitle(text: 'Today\'s Tasks'),
                    // TextButton(onPressed: () async{}, child: child)
                  ],
                ),
                SizedBox(height: k.defaulPadding / 2),

                TaskList()
              ],
            ),
          ).animatedBox.color(k.defaultBgColor).withRounded(value: 32).make(),
        ),
      ),
    );
  }
}
