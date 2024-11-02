import 'package:adventure_quest/activity/data/datasource/activity_local_datasource.dart';
import 'package:adventure_quest/activity/data/datasource/activity_remote_datasource.dart';
import 'package:adventure_quest/activity/data/model/activity.dart';
import 'package:adventure_quest/database/app_database.dart';

abstract class ActivityRepository {
  // fetch, get, delete, save, basic crud with api calls too
  Future<ActivityModel> fetchActivity();
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
  Future<ActivityModel> fetchActivity() async {
    return activityRemoteDataSource.fetchActivity();
  }

  @override
  Future<List<ActivityData>> getActivity() {
    return activityLocalDataSource.getActivity();
  }

  @override
  Future<void> saveActivity(activityCompanion) {
    return activityLocalDataSource.addActivity(activityCompanion);
  }
}

ActivityRepository activityRepository = ActivityRepositoryImpl();
