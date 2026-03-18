import 'package:lesson36_flutter/domain/entities/task.dart';

abstract class TaskRepository {
  Future<List<Task>> getTasks();
  Future<void> addTask(String title);
  Future<void> deleteTask(int id);
}