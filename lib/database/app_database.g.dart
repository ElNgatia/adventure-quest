// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $ActivityTable extends Activity
    with TableInfo<$ActivityTable, ActivityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ActivityTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _activityMeta =
      const VerificationMeta('activity');
  @override
  late final GeneratedColumn<String> activity = GeneratedColumn<String>(
      'activity', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
      'type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _participantsMeta =
      const VerificationMeta('participants');
  @override
  late final GeneratedColumn<int> participants = GeneratedColumn<int>(
      'participants', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _linkMeta = const VerificationMeta('link');
  @override
  late final GeneratedColumn<String> link = GeneratedColumn<String>(
      'link', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _keyMeta = const VerificationMeta('key');
  @override
  late final GeneratedColumn<String> key = GeneratedColumn<String>(
      'key', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  @override
  List<GeneratedColumn> get $columns =>
      [id, activity, type, participants, link, key];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'activity';
  @override
  VerificationContext validateIntegrity(Insertable<ActivityData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('activity')) {
      context.handle(_activityMeta,
          activity.isAcceptableOrUnknown(data['activity']!, _activityMeta));
    } else if (isInserting) {
      context.missing(_activityMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('participants')) {
      context.handle(
          _participantsMeta,
          participants.isAcceptableOrUnknown(
              data['participants']!, _participantsMeta));
    } else if (isInserting) {
      context.missing(_participantsMeta);
    }
    if (data.containsKey('link')) {
      context.handle(
          _linkMeta, link.isAcceptableOrUnknown(data['link']!, _linkMeta));
    } else if (isInserting) {
      context.missing(_linkMeta);
    }
    if (data.containsKey('key')) {
      context.handle(
          _keyMeta, key.isAcceptableOrUnknown(data['key']!, _keyMeta));
    } else if (isInserting) {
      context.missing(_keyMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ActivityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ActivityData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      activity: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}activity'])!,
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type'])!,
      participants: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}participants'])!,
      link: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}link'])!,
      key: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}key'])!,
    );
  }

  @override
  $ActivityTable createAlias(String alias) {
    return $ActivityTable(attachedDatabase, alias);
  }
}

class ActivityData extends DataClass implements Insertable<ActivityData> {
  final int id;
  final String activity;
  final String type;
  final int participants;
  final String link;
  final String key;
  const ActivityData(
      {required this.id,
      required this.activity,
      required this.type,
      required this.participants,
      required this.link,
      required this.key});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['activity'] = Variable<String>(activity);
    map['type'] = Variable<String>(type);
    map['participants'] = Variable<int>(participants);
    map['link'] = Variable<String>(link);
    map['key'] = Variable<String>(key);
    return map;
  }

  ActivityCompanion toCompanion(bool nullToAbsent) {
    return ActivityCompanion(
      id: Value(id),
      activity: Value(activity),
      type: Value(type),
      participants: Value(participants),
      link: Value(link),
      key: Value(key),
    );
  }

  factory ActivityData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ActivityData(
      id: serializer.fromJson<int>(json['id']),
      activity: serializer.fromJson<String>(json['activity']),
      type: serializer.fromJson<String>(json['type']),
      participants: serializer.fromJson<int>(json['participants']),
      link: serializer.fromJson<String>(json['link']),
      key: serializer.fromJson<String>(json['key']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'activity': serializer.toJson<String>(activity),
      'type': serializer.toJson<String>(type),
      'participants': serializer.toJson<int>(participants),
      'link': serializer.toJson<String>(link),
      'key': serializer.toJson<String>(key),
    };
  }

  ActivityData copyWith(
          {int? id,
          String? activity,
          String? type,
          int? participants,
          String? link,
          String? key}) =>
      ActivityData(
        id: id ?? this.id,
        activity: activity ?? this.activity,
        type: type ?? this.type,
        participants: participants ?? this.participants,
        link: link ?? this.link,
        key: key ?? this.key,
      );
  ActivityData copyWithCompanion(ActivityCompanion data) {
    return ActivityData(
      id: data.id.present ? data.id.value : this.id,
      activity: data.activity.present ? data.activity.value : this.activity,
      type: data.type.present ? data.type.value : this.type,
      participants: data.participants.present
          ? data.participants.value
          : this.participants,
      link: data.link.present ? data.link.value : this.link,
      key: data.key.present ? data.key.value : this.key,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ActivityData(')
          ..write('id: $id, ')
          ..write('activity: $activity, ')
          ..write('type: $type, ')
          ..write('participants: $participants, ')
          ..write('link: $link, ')
          ..write('key: $key')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, activity, type, participants, link, key);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ActivityData &&
          other.id == this.id &&
          other.activity == this.activity &&
          other.type == this.type &&
          other.participants == this.participants &&
          other.link == this.link &&
          other.key == this.key);
}

class ActivityCompanion extends UpdateCompanion<ActivityData> {
  final Value<int> id;
  final Value<String> activity;
  final Value<String> type;
  final Value<int> participants;
  final Value<String> link;
  final Value<String> key;
  const ActivityCompanion({
    this.id = const Value.absent(),
    this.activity = const Value.absent(),
    this.type = const Value.absent(),
    this.participants = const Value.absent(),
    this.link = const Value.absent(),
    this.key = const Value.absent(),
  });
  ActivityCompanion.insert({
    this.id = const Value.absent(),
    required String activity,
    required String type,
    required int participants,
    required String link,
    required String key,
  })  : activity = Value(activity),
        type = Value(type),
        participants = Value(participants),
        link = Value(link),
        key = Value(key);
  static Insertable<ActivityData> custom({
    Expression<int>? id,
    Expression<String>? activity,
    Expression<String>? type,
    Expression<int>? participants,
    Expression<String>? link,
    Expression<String>? key,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (activity != null) 'activity': activity,
      if (type != null) 'type': type,
      if (participants != null) 'participants': participants,
      if (link != null) 'link': link,
      if (key != null) 'key': key,
    });
  }

  ActivityCompanion copyWith(
      {Value<int>? id,
      Value<String>? activity,
      Value<String>? type,
      Value<int>? participants,
      Value<String>? link,
      Value<String>? key}) {
    return ActivityCompanion(
      id: id ?? this.id,
      activity: activity ?? this.activity,
      type: type ?? this.type,
      participants: participants ?? this.participants,
      link: link ?? this.link,
      key: key ?? this.key,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (activity.present) {
      map['activity'] = Variable<String>(activity.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (participants.present) {
      map['participants'] = Variable<int>(participants.value);
    }
    if (link.present) {
      map['link'] = Variable<String>(link.value);
    }
    if (key.present) {
      map['key'] = Variable<String>(key.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ActivityCompanion(')
          ..write('id: $id, ')
          ..write('activity: $activity, ')
          ..write('type: $type, ')
          ..write('participants: $participants, ')
          ..write('link: $link, ')
          ..write('key: $key')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $ActivityTable activity = $ActivityTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [activity];
}

typedef $$ActivityTableCreateCompanionBuilder = ActivityCompanion Function({
  Value<int> id,
  required String activity,
  required String type,
  required int participants,
  required String link,
  required String key,
});
typedef $$ActivityTableUpdateCompanionBuilder = ActivityCompanion Function({
  Value<int> id,
  Value<String> activity,
  Value<String> type,
  Value<int> participants,
  Value<String> link,
  Value<String> key,
});

class $$ActivityTableFilterComposer
    extends Composer<_$AppDatabase, $ActivityTable> {
  $$ActivityTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get activity => $composableBuilder(
      column: $table.activity, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get participants => $composableBuilder(
      column: $table.participants, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get link => $composableBuilder(
      column: $table.link, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get key => $composableBuilder(
      column: $table.key, builder: (column) => ColumnFilters(column));
}

class $$ActivityTableOrderingComposer
    extends Composer<_$AppDatabase, $ActivityTable> {
  $$ActivityTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get activity => $composableBuilder(
      column: $table.activity, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get participants => $composableBuilder(
      column: $table.participants,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get link => $composableBuilder(
      column: $table.link, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get key => $composableBuilder(
      column: $table.key, builder: (column) => ColumnOrderings(column));
}

class $$ActivityTableAnnotationComposer
    extends Composer<_$AppDatabase, $ActivityTable> {
  $$ActivityTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get activity =>
      $composableBuilder(column: $table.activity, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<int> get participants => $composableBuilder(
      column: $table.participants, builder: (column) => column);

  GeneratedColumn<String> get link =>
      $composableBuilder(column: $table.link, builder: (column) => column);

  GeneratedColumn<String> get key =>
      $composableBuilder(column: $table.key, builder: (column) => column);
}

class $$ActivityTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ActivityTable,
    ActivityData,
    $$ActivityTableFilterComposer,
    $$ActivityTableOrderingComposer,
    $$ActivityTableAnnotationComposer,
    $$ActivityTableCreateCompanionBuilder,
    $$ActivityTableUpdateCompanionBuilder,
    (ActivityData, BaseReferences<_$AppDatabase, $ActivityTable, ActivityData>),
    ActivityData,
    PrefetchHooks Function()> {
  $$ActivityTableTableManager(_$AppDatabase db, $ActivityTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ActivityTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ActivityTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ActivityTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> activity = const Value.absent(),
            Value<String> type = const Value.absent(),
            Value<int> participants = const Value.absent(),
            Value<String> link = const Value.absent(),
            Value<String> key = const Value.absent(),
          }) =>
              ActivityCompanion(
            id: id,
            activity: activity,
            type: type,
            participants: participants,
            link: link,
            key: key,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String activity,
            required String type,
            required int participants,
            required String link,
            required String key,
          }) =>
              ActivityCompanion.insert(
            id: id,
            activity: activity,
            type: type,
            participants: participants,
            link: link,
            key: key,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ActivityTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ActivityTable,
    ActivityData,
    $$ActivityTableFilterComposer,
    $$ActivityTableOrderingComposer,
    $$ActivityTableAnnotationComposer,
    $$ActivityTableCreateCompanionBuilder,
    $$ActivityTableUpdateCompanionBuilder,
    (ActivityData, BaseReferences<_$AppDatabase, $ActivityTable, ActivityData>),
    ActivityData,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$ActivityTableTableManager get activity =>
      $$ActivityTableTableManager(_db, _db.activity);
}
