import 'dart:convert';

import 'package:adventure_quest/activity/data/model/activity.dart';
import 'package:http/http.dart' as http;

abstract class ActivityRemoteDataSource {
  Future<ActivityModel> fetchActivity();
}

class ActivityRemoteDataSourceImpl implements ActivityRemoteDataSource {
  @override
  Future<ActivityModel> fetchActivity() async {
    try {
      final response = await http.get(Uri.parse('https://bored.api.lewagon.com/api/activity/'));

      return ActivityModel.fromJson(json.decode(response.body));
    } catch (e) {
      rethrow;
    }
  }
}

ActivityRemoteDataSource activityRemoteDataSource = ActivityRemoteDataSourceImpl();
