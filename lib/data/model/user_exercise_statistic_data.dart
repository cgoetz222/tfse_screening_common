class UserExerciseStatisticData {
  static const int stateNew = 0;
  static const int stateDone = 1;
  static const int stateInProgress = 10;
  static const int stateTimerDone = 11;
  static const int stateSkipped = 90;
  static const int stateCancelled = 91;

  DateTime timeStampCreated;
  DateTime timeStampDone;
  String exerciseDBKey;
  int state = -1;

  UserExerciseStatisticData(this.exerciseDBKey, this.timeStampCreated, this.timeStampDone, this.state);

  factory UserExerciseStatisticData.fromJson(Map<String, dynamic> json) {
    DateTime timeStampCreated;
    DateTime timeStampDone;
    String exerciseDBKey;
    int state;

    if(json['exerciseDBKey'] != null) {
      exerciseDBKey = json['exerciseDBKey'] as String;
    } else {
      exerciseDBKey = '';
    }
    if(json['timeStampCreated'] != null) {
      timeStampCreated = DateTime.parse(json['timeStampCreated']);
    } else {
      timeStampCreated = DateTime.now();
    }
    if(json['timeStampDone'] != null) {
      timeStampDone = DateTime.parse(json['timeStampDone']);
    } else {
      timeStampDone = DateTime.now();
    }
    if(json['state'] != null) {
      state = json['state'] as int;
    } else {
      state = -1;
    }

    return UserExerciseStatisticData(
        exerciseDBKey,
        timeStampCreated,
        timeStampDone,
        state
    );
  }

  Map<String, dynamic> toJson() => {
    'exerciseDBKey': exerciseDBKey,
    'timeStampCreated' : timeStampCreated.toString(),
    'timeStampDone' : timeStampDone.toString(),
    'state': state,
  };
}