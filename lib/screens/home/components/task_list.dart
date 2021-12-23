import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo_list/constantes.dart';
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
                    secondaryBackground: Row(
                      children: [
                        SvgPicture.asset('assets/icons/trash.svg'),
                      ],
                    ),
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

  Future<bool> confirmRemove(DismissDirection dismissDirection) async {
    return Future.delayed(
        Duration(
          seconds: 3,
        ), () {
      return false;
    });
  }
}
