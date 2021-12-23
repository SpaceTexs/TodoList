import 'package:flutter/material.dart';
import 'package:todo_list/constantes.dart';
import 'home_screen.dart';
import 'task_item.dart';

class TaskList extends StatelessWidget {
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
                    background: Row(
                      children: [],
                    ),
                    secondaryBackground: Container(
                      color: Colors.red,
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
}
