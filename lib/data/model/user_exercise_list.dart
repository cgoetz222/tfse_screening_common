import 'package:tfse_screening_common/data/model/user_exercise_item.dart';

class UserExerciseList {
  String dbKey = '';
  String userDBKey = '';
  List<UserExerciseItem> userExerciseItems = [];

  UserExerciseList(this.dbKey, this.userDBKey, this.userExerciseItems);

  factory UserExerciseList.fromJson(String dbKey, Map<String, dynamic> json) {
    String dbKeyLocal;
    final String userDBKey;
    final List<UserExerciseItem> items;

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
    if (json['exerciseItems'] != null) {
      var exerciseObjsJson = json['exerciseItems'] as List;
      items = exerciseObjsJson.map((painJson) => UserExerciseItem.fromJson(painJson)).toList();
    } else {
      items = [];
    }

    if(dbKey.isNotEmpty) {
      dbKeyLocal = dbKey;
    }

    return UserExerciseList(
      dbKeyLocal,
      userDBKey,
      items
    );
  }

  Map<String, dynamic> toJson() {
    List? exerciseItems = userExerciseItems != null ? userExerciseItems.map((i) => i.toJson()).toList() : null;
    return {
      'dbKey': dbKey,
      'userDBKey': userDBKey,
      'exerciseItems': exerciseItems,
    };
  }
}