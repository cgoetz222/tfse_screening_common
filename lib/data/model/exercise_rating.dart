class ExerciseRating {
  String id = '0';
  String description = '';

  ExerciseRating(this.id, this. description);

  factory ExerciseRating.fromJson(Map<String, dynamic> json) {
    final String id;
    final String description;

    if(json['id'] != null) {
      id = json['id'] as String;
    } else {
      id = '0';
    }
    if(json['description'] != null) {
      description = json['description'] as String;
    } else {
      description = '';
    }

    return ExerciseRating(
        id,
        description
    );
  }

  Map<String, dynamic> toJson() => {
    'id' : id,
    'description': description,
  };
}