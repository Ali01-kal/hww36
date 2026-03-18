import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import '../../../domain/entities/task.dart';

part 'app_db.g.dart';

class Tasks extends Table{
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text()();
}

@DriftDatabase(tables:[Tasks])
class AppDatabase extends $_AppDatabase{
  AppDatabase() : super(NativeDatabase.memory());
}
@override 
int get schemaVersion => 1;