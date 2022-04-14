import 'dart:convert';

import 'exercise_config.dart';
import 'exercise_rating.dart';

class Exercise {
  static const int categoryIDWarmup = 1;
  static const int categoryIDMainWorkout = 2;
  static const int categoryIDStretching = 3;
  static final List categories = ['Aufwärmen', 'Hauptteil', 'Dehnen'];

  String dbId; // unique ID in the firestore database
  final int categoryID;
  final String category;
  String name;
  int setsMin;
  int setsMax;
  int repeats;
  double time;

  List<ExerciseRating> ratings = [];
  ExerciseConfiguration config = ExerciseConfiguration(true, true, true, true, true);

  Exercise(this.categoryID, this.category, this.name, this.setsMin, this.setsMax, this.repeats, this.time, this.dbId, this.ratings, this.config);

  void setID(String id) {
    this.dbId = id;
  }

  factory Exercise.fromJson(String id, Map<String, dynamic> jsonMap) {
    final int categoryID;
    final String category;
    final String name;
    final int setsMin;
    final int setsMax;
    final int repeats;
    final double time;
    final List<ExerciseRating> ratings;
    final ExerciseConfiguration config;

    if(jsonMap['categoryID'] != null) {
      categoryID = jsonMap['categoryID'] as int;
    } else {
      categoryID = 0;
    }
    if(jsonMap['category'] != null) {
      category = jsonMap['category'] as String;
    } else {
      category = '';
    }
    if(jsonMap['name'] != null) {
      name = jsonMap['name'] as String;
    } else {
      name = '';
    }
    if(jsonMap['setsMin'] != null) {
      setsMin = jsonMap['setsMin'] as int;
    } else {
      setsMin = 0;
    }
    if(jsonMap['setsMax'] != null) {
      setsMax = jsonMap['setsMax'] as int;
    } else {
      setsMax = 0;
    }
    if(jsonMap['repeats'] != null) {
      repeats = jsonMap['repeats'] as int;
    } else {
      repeats = 0;
    }
    if(jsonMap['time'] != null) {
      time = double.parse(jsonMap['time']);
    } else {
      time = 0;
    }
    if (jsonMap['ratings'] != null && jsonMap['ratings'].length > 0) {
      ratings = (json.decode(jsonMap['ratings']) as List).map((rating) => ExerciseRating.fromJson(rating)).toList();
    } else {
      ratings = [];
    }
    if(jsonMap['configuration'] != null) {
      config = ExerciseConfiguration.fromJson(jsonMap['configuration']);
    } else {
      config = ExerciseConfiguration(true, true, true, true, true);
    }

    return Exercise(
        categoryID,
        category,
        name,
        setsMin,
        setsMax,
        repeats,
        time,
        id,
        ratings,
        config
    );
  }

  Map<String, dynamic> toJson() => {
    'categoryID': categoryID,
    'name' : name,
    'setsMin': setsMin,
    'setsMax': setsMax,
    'repeats': repeats,
    'time': time.toString(),
    'ratings': jsonEncode(ratings.map((e) => e.toJson()).toList()),
    'configuration': config.toJson()
  };
}