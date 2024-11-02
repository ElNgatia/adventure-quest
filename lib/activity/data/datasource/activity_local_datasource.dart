import 'package:adventure_quest/database/app_database.dart';

abstract class ActivityLocalDataSource {
  // get activities, add activity, delete activity,
  Future<void> addActivity(activityCompanion);
  void deleteActivity(int id);
  Future<List<ActivityData>> getActivity();
}

class ActivityLocalDataSourceImpl implements ActivityLocalDataSource {
  @override
  Future<void> addActivity( activityCompanion) {
    return appDatabase.into(appDatabase.activity).insert(activityCompanion);
  }

  @override
  void deleteActivity(int id) {
    return appDatabase.delete(appDatabase.activity).where((tbl) => tbl.id.equals(id));
  }

  @override
  Future<List<ActivityData>> getActivity() {
    return appDatabase.select(appDatabase.activity).get();
  }
}

ActivityLocalDataSource activityLocalDataSource = ActivityLocalDataSourceImpl();
