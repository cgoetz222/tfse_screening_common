class ExerciseRating {
  String id = '0';
  bool selected = false;
  String description = '';

  ExerciseRating(this.id, this.selected, this. description);

  factory ExerciseRating.fromJson(Map<String, dynamic> json) {
    final String id;
    final bool selected;
    final String description;

    if(json['id'] != null) {
      id = json['id'] as String;
    } else {
      id = '0';
    }
    if(json['selected'] != null) {
      selected = json['selected'] as bool;
    } else {
      selected = false;
    }
    if(json['description'] != null) {
      description = json['description'] as String;
    } else {
      description = '';
    }

    return ExerciseRating(
        id,
        selected,
        description
    );
  }

  Map<String, dynamic> toJson() => {
    'id' : id,
    'selected': selected,
    'description': description,
  };
}