import 'package:drift/drift.dart';

class Activity extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get activity => text()();
  TextColumn get type => text()();
  IntColumn get participants => integer()();
  TextColumn get link => text()();
  TextColumn get key => text().unique()();
}
class ActivityModel {
  final int? id;
  final String activity;
  final String type;
  final int participants;
  final String link;
  final String key;

  ActivityModel({
 this.id,
    required this.activity,
    required this.type,
    required this.participants,
    required this.link,
    required this.key,
  });

  factory ActivityModel.fromJson(Map<String, dynamic> json) {
    return ActivityModel(
      activity: json['activity'] as String,
      type: json['type'] as String,
      participants: json['participants'] as int,
      link: json['link'] as String,
      key: json['key'] as String,
    );
  }
}