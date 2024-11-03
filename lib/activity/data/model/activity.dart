import 'package:drift/drift.dart';

class Activity extends Table {
  IntColumn get id => integer().autoIncrement().nullable()();
  TextColumn get activity => text()();
  TextColumn get type => text()();
  IntColumn get participants => integer()();
  TextColumn get link => text()();
  TextColumn get key => text().unique()();
}
