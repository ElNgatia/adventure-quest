import 'package:flutter/material.dart';

class ActivitiesNotifier extends ChangeNotifier {
  final Map<String, dynamic> _activities = {};
  Map<String, dynamic> get activities => _activities;

  Future<void> addActivity(Map<String, dynamic> activity) async {
    _activities[activity['key']] = activity;
    notifyListeners();
  }

  void removeActivity(activity) {
    _activities.remove(activity);
    notifyListeners();
  }
}

