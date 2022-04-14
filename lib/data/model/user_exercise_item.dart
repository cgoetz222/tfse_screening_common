import 'package:tfse_screening_common/data/model/exercise.dart';

import 'exercise_config.dart';

class UserExerciseItem {
  int order = 0;
  Exercise? exercise;

  UserExerciseItem(this.order, this.exercise);

  factory UserExerciseItem.fromJson(Map<String, dynamic> json) {
    final int order;
    final Exercise exercise;

    if(json['order'] != null) {
      order = json['order'] as int;
    } else {
      order = 0;
    }
    if (json['exerciseItem'] != null) {
      exercise = Exercise.fromJson('', json['exerciseItem']);
    } else {
      exercise = Exercise(0, '', '', 0, 0, 0, 0.0, '', [], ExerciseConfiguration(true, true, true, true, true));
    }

    return UserExerciseItem(
        order,
        exercise
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'order': order,
      'exerciseItem': exercise?.toJson()
    };
  }
}