import 'dart:convert';

import 'package:adventure_quest/database/app_database.dart';
import 'package:http/http.dart' as http;

abstract class ActivityRemoteDataSource {
  Future<ActivityData> fetchActivity();
}

class ActivityRemoteDataSourceImpl implements ActivityRemoteDataSource {
  @override
  Future<ActivityData> fetchActivity() async {
    try {
      final response = await http.get(Uri.parse('https://bored.api.lewagon.com/api/activity/'));

      return ActivityData.fromJson(json.decode(response.body));
    } catch (e) {
      rethrow;
    }
  }
}

ActivityRemoteDataSource activityRemoteDataSource = ActivityRemoteDataSourceImpl();
