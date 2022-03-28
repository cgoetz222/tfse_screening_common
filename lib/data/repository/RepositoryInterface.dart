import '../model/exercise.dart';

abstract class RepositoryInterface {
  /// ADD
  Future<String> addExercise(Exercise exercise);

  /// COUNT
  Future<List<int>> getExerciseCounts();

  /// CREATE
  Future<void> createUser();

  /// DELETE
  Future<void> deleteExercise(int categoryID, String id);

  /// EXISTS
  Future<bool> checkUserExists(String uid);

  /// GET
  Future<List<Exercise>> getExercises(int categoryID);

  /// UPDATE
  Future<void> updateExercise(Exercise exercise);
}