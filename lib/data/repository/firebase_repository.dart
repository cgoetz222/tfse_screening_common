import 'package:cloud_firestore/cloud_firestore.dart';

import '../model/exercise.dart';
import 'RepositoryInterface.dart';

class FirebaseRepository implements RepositoryInterface {
  FirebaseRepository();

  final firestoreInstance = FirebaseFirestore.instance;

  static String WARMUPS_COLLECTION = "warmups";
  static String MAINWORKOUTS_COLLECTION = "mainWorkouts";
  static String STRETCHINGS_COLLECTION = "stretchings";

  /// ADD
  @override
  Future<String> addExercise(Exercise exercise) async {
    String newID = '';
    CollectionReference exerciseCollection;

    if(exercise.categoryID == Exercise.categoryIDWarmup) {
      exerciseCollection = FirebaseFirestore.instance.collection(WARMUPS_COLLECTION);
    } else if(exercise.categoryID == Exercise.categoryIDMainWorkout) {
      exerciseCollection = FirebaseFirestore.instance.collection(MAINWORKOUTS_COLLECTION);
    } else {
      exerciseCollection = FirebaseFirestore.instance.collection(STRETCHINGS_COLLECTION);
    }

    await exerciseCollection.add(exercise.toJson()).then((value) => newID = value.id);

    return newID;
  }

  /// COUNTS
  @override
  Future<List<int>> getExerciseCounts() async {
    List<int> counts = [];

    counts.add(await FirebaseFirestore.instance
        .collection(WARMUPS_COLLECTION)
        .get()
        .then((value) {
      var count = 0;
      count = value.docs.length;

      return count;
    }));
    counts.add(await FirebaseFirestore.instance
        .collection(MAINWORKOUTS_COLLECTION)
        .get()
        .then((value) {
      var count = 0;
      count = value.docs.length;

      return count;
    }));
    counts.add(await FirebaseFirestore.instance
        .collection(STRETCHINGS_COLLECTION)
        .get()
        .then((value) {
      var count = 0;
      count = value.docs.length;

      return count;
    }));

    return counts;
  }

  /// CREATE
  @override
  Future<void> createUser() async {

  }

  /// DELETE
  @override
  Future<void> deleteExercise(int categoryID, String id) async {
    CollectionReference exerciseCollection;

    if(categoryID == Exercise.categoryIDWarmup) {
      exerciseCollection = FirebaseFirestore.instance.collection(WARMUPS_COLLECTION);
    } else if(categoryID == Exercise.categoryIDMainWorkout) {
      exerciseCollection = FirebaseFirestore.instance.collection(MAINWORKOUTS_COLLECTION);
    } else {
      exerciseCollection = FirebaseFirestore.instance.collection(STRETCHINGS_COLLECTION);
    }

    await exerciseCollection.doc(id).delete().then((value) => print("Deleted"));
  }

  /// EXISTS
  @override
  Future<bool> checkUserExists(String uid) async {
    CollectionReference userCollection = FirebaseFirestore.instance.collection('users');

    DocumentSnapshot ds = await userCollection.doc(uid).get();
    return ds.exists;
  }

  /// GET
  @override
  Future<List<Exercise>> getExercises(int categoryID) async {
    List<Exercise> exerciseList = [];

    CollectionReference exerciseCollection;

    if(categoryID == Exercise.categoryIDWarmup) {
      exerciseCollection = FirebaseFirestore.instance.collection(WARMUPS_COLLECTION);
    } else if(categoryID == Exercise.categoryIDMainWorkout) {
      exerciseCollection = FirebaseFirestore.instance.collection(MAINWORKOUTS_COLLECTION);
    } else {
      exerciseCollection = FirebaseFirestore.instance.collection(STRETCHINGS_COLLECTION);
    }

    QuerySnapshot querySnapshot;
    querySnapshot = await exerciseCollection.get();
    for (var result in querySnapshot.docs) {
      Exercise exercise = Exercise.fromJson(result.id, result.data() as Map<String, dynamic>);
      exerciseList.add(exercise);
    }

    return exerciseList;
  }

  /// UPDATE
  @override
  Future<void> updateExercise(Exercise exercise) async {
    CollectionReference exerciseCollection;

    if(exercise.categoryID == Exercise.categoryIDWarmup) {
      exerciseCollection = FirebaseFirestore.instance.collection(WARMUPS_COLLECTION);
    } else if(exercise.categoryID == Exercise.categoryIDMainWorkout) {
      exerciseCollection = FirebaseFirestore.instance.collection(MAINWORKOUTS_COLLECTION);
    } else {
      exerciseCollection = FirebaseFirestore.instance.collection(STRETCHINGS_COLLECTION);
    }

    exerciseCollection
        .doc(exercise.dbId) // <-- Doc ID where data should be updated.
        .update(exercise.toJson()) // <-- Updated data
        .then((_) => print('Updated'))
        .catchError((error) => print('Update failed: $error'));
  }
}