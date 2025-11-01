import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  final List<String> tasks = ['Сдать отчёт', 'Подготовиться к экзамену', 'Посмотреть лекцию'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Мои задачи'), backgroundColor: Colors.deepPurple),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(tasks[index]),
            trailing: Icon(Icons.check_circle_outline),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Добавление новой задачи
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
