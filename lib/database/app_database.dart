import 'package:drift/drift.dart';

import 'package:adventure_quest/activity/data/model/activity.dart';
import 'package:drift_flutter/drift_flutter.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [Activity])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openDatabase());

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (m) async {
        await m.createAll();
      },
      onUpgrade: (m, from, to) async {},
    );
  }

  static QueryExecutor _openDatabase() {
    return driftDatabase(name: 'adventure_quest');
  }
}

AppDatabase appDatabase = AppDatabase();
