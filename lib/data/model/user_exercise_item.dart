import 'package:tfse_screening_common/data/model/exercise.dart';
import 'package:tfse_screening_common/data/model/user_exercise_statistic_data.dart';

import 'exercise_config.dart';

class UserExerciseItem {
  int order = 0;
  Exercise? exercise;
  UserExerciseStatisticData? statisticData;

  UserExerciseItem(this.order, this.exercise, this.statisticData);

  factory UserExerciseItem.fromJson(Map<String, dynamic> json) {
    final int order;
    final Exercise exercise;
    final UserExerciseStatisticData statisticData;

    if(json['order'] != null) {
      order = json['order'] as int;
    } else {
      order = 0;
    }
    if(json['exerciseItem'] != null) {
      exercise = Exercise.fromJson('', json['exerciseItem']);
    } else {
      exercise = Exercise(0, '', '', 0, 0, 0, 0.0, '', [], ExerciseConfiguration(true, true, true, true, true));
    }
    if(json['statisticData'] != null) {
      statisticData = UserExerciseStatisticData.fromJson(json['statisticData']);
    } else {
      statisticData = UserExerciseStatisticData(exercise.dbId, DateTime.now(), DateTime.now(), UserExerciseStatisticData.stateNew);
    }

    return UserExerciseItem(
        order,
        exercise,
        statisticData,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'order': order,
      'exerciseItem': exercise?.toJson(),
      'statisticData' : statisticData?.toJson()
    };
  }
}