import 'package:adventure_quest/activity/data/datasource/activity_local_datasource.dart';
import 'package:adventure_quest/activity/data/datasource/activity_remote_datasource.dart';
import 'package:adventure_quest/database/app_database.dart';

abstract class ActivityRepository {
  // fetch, get, delete, save, basic crud with api calls too
  Future<ActivityData> fetchActivity();
  Future<List<ActivityData>> getActivity();
  Future<void> saveActivity(activity);
  void deleteActivity(int id);
}

class ActivityRepositoryImpl implements ActivityRepository {
  @override
  void deleteActivity(int id) {
    return activityLocalDataSource.deleteActivity(id);
  }

  @override
  Future<ActivityData> fetchActivity() async {
    return activityRemoteDataSource.fetchActivity();
  }

  @override
  Future<List<ActivityData>> getActivity() {
    return activityLocalDataSource.getActivity();
  }

  @override
  Future<void> saveActivity(activityCompanion) async {
    return await activityLocalDataSource.addActivity(activityCompanion);
  }
}

ActivityRepository activityRepository = ActivityRepositoryImpl();
