class ExerciseConfiguration {
  bool showSets = false;
  bool showRepeats = false;
  bool showTime = false;
  bool showRatings = false;
  bool timeInSeconds;

  ExerciseConfiguration(this.showSets, this.showRepeats, this.showTime, this.timeInSeconds, this.showRatings);

  factory ExerciseConfiguration.fromJson(Map<String, dynamic> json) {
    bool showSets;
    bool showRepeats;
    bool showTime;
    final bool timeInSeconds;
    bool showRatings;

    if(json['showSets'] != null) {
      showSets = json['showSets'] as bool;
    } else {
      showSets = true;
    }
    if(json['showRepeats'] != null) {
      showRepeats = json['showRepeats'] as bool;
    } else {
      showRepeats = true;
    }
    if(json['showTime'] != null) {
      showTime = json['showTime'] as bool;
    } else {
      showTime = true;
    }
    if(json['timeInSeconds'] != null) {
      timeInSeconds = json['timeInSeconds'] as bool;
    } else {
      timeInSeconds = true;
    }
    if(json['showRatings'] != null) {
      showRatings = json['showRatings'] as bool;
    } else {
      showRatings = true;
    }

    return ExerciseConfiguration(
        showSets,
        showRepeats,
        showTime,
        timeInSeconds,
        showRatings
    );
  }

  Map<String, dynamic> toJson() => {
    'showSets' : showSets,
    'showRepeats': showRepeats,
    'showTime': showTime,
    'timeInSeconds': timeInSeconds,
    'showRatings': showRatings,
  };
}