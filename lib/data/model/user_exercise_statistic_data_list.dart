import 'package:tfse_screening_common/data/model/user_exercise_statistic_data.dart';

class UserExerciseStatisticDataList {
  String dbKey = '';
  String userDBKey = '';
  List<UserExerciseStatisticData> userExerciseStatisticDataItems = [];

  UserExerciseStatisticDataList(this.dbKey, this.userDBKey, this.userExerciseStatisticDataItems);

  factory UserExerciseStatisticDataList.fromJson(String dbKey, Map<String, dynamic> json) {
    String dbKeyLocal;
    final String userDBKey;
    final List<UserExerciseStatisticData> items;

    if(json['dbKey'] != null) {
      dbKeyLocal = json['dbKey'] as String;
    } else {
      dbKeyLocal = '';
    }
    if(json['userDBKey'] != null) {
      userDBKey = json['userDBKey'] as String;
    } else {
      userDBKey = '';
    }
    if (json['userExerciseStatisticDataItems'] != null) {
      var exerciseObjsJson = json['userExerciseStatisticDataItems'] as List;
      items = exerciseObjsJson.map((painJson) => UserExerciseStatisticData.fromJson(painJson)).toList();
    } else {
      items = [];
    }

    if(dbKey.isNotEmpty) {
      dbKeyLocal = dbKey;
    }

    return UserExerciseStatisticDataList(
        dbKeyLocal,
        userDBKey,
        items
    );
  }

  Map<String, dynamic> toJson() {
    List? exerciseStatisticItems = userExerciseStatisticDataItems != null ? userExerciseStatisticDataItems.map((i) => i.toJson()).toList() : null;
    return {
      'dbKey': dbKey,
      'userDBKey': userDBKey,
      'exerciseItems': exerciseStatisticItems,
    };
  }
}