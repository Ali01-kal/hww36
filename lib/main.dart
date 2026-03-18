import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lesson36_flutter/presentation/bloc/bloc/task_bloc.dart';
import 'package:lesson36_flutter/presentation/bloc/bloc/task_event.dart';

import 'core/di/locator.dart';

import 'presentation/screens/todo_screen.dart';

void main() {
  setup();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (_) => sl<TaskBloc>()..add(LoadTasks()),
        child: TodoScreen(),
      ),
    );
  }
}
