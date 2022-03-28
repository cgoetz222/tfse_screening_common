class ExerciseConfiguration {
  bool showSets = false;
  bool showRepeats = false;
  bool showTime = false;
  bool showRatings = false;

  ExerciseConfiguration(this.showSets, this.showRepeats, this.showTime, this.showRatings);

  factory ExerciseConfiguration.fromJson(Map<String, dynamic> json) {
    bool showSets;
    bool showRepeats;
    bool showTime;
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
    if(json['showRatings'] != null) {
      showRatings = json['showRatings'] as bool;
    } else {
      showRatings = true;
    }

    return ExerciseConfiguration(
        showSets,
        showRepeats,
        showTime,
        showRatings
    );
  }

  Map<String, dynamic> toJson() => {
  'showSets' : showSets,
  'showRepeats': showRepeats,
  'showTime': showTime,
  'showRatings': showRatings,
  };
}