import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo_list/constantes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'task_item.dart';

class TaskList extends StatefulWidget {
  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ...List.generate(
              10,
              (index) => Column(
                children: [
                  Dismissible(
                    key: Key('task-item-$index'),
                    child: TaskItem(),
                    direction: DismissDirection.endToStart,
                    confirmDismiss: confirmRemove,
                    background: Container(),
                    secondaryBackground: buildSecondaryBackground(),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            SizedBox(height: k.defaulPadding),
          ],
        ),
      ),
    );
  }

  Widget buildSecondaryBackground() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: k.defaulPadding),
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/icons/trash.svg',
            color: Vx.blueGray400,
          ),
          SizedBox(width: 10),
          'The task was deleted'.text.xl.blueGray400.make(),
          Spacer(),
          OutlinedButton(
            onPressed: () {},
            child: 'Undo'.toUpperCase().text.bold.blueGray700.make(),
            style: OutlinedButton.styleFrom(
                primary: Vx.red500,
                side: BorderSide(
                  width: 2,
                  color: Vx.gray200.withOpacity(0.75),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                )),
          ),
        ],
      ),
    );
  }

  Future<bool> confirmRemove(DismissDirection dismissDirection) async {
    return Future.delayed(
        Duration(
          seconds: 3,
        ), () {
      return false;
    });
  }
}
