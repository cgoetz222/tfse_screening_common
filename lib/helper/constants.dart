class Constants {
  Constants._(); // this basically makes it so you can instantiate this class

  // default date
  static DateTime defaultDateTime = DateTime(1900,1,1,0,0,0,0,0);

  // turn debugging on/off
  static const bool debugMode = true;

  // sizes
  static const double dividedCircularOutlinePainterSize = 32.0;
  static const double dividedCircularOutlinePainterPadding = 2.0;

  // names of the used files
  static const String userDataJSONFilename = "userJSONData.json";
  static const String trainerWarmupsJSONFilename = "trainerWarmupsJSONData.json";
  static const String trainerMainWorkoutsJSONFilename = "trainerMainWorkoutsJSONData.json";
  static const String trainerStretchingsJSONFilename = "trainerStretchingsJSONData.json";
  static const String userWorkoutsJSONFilename = "userWorkoutsJSONData.json";
  //static const String userExerciseStatisticDataJSONFilename = "statisticDataJSONData.json";
  static const String userImageFromFront = "front.jpg";
  static const String userImageFromBack = "back.jpg";
  static const String userImageFromSite = "site.jpg";

  // padding
  static const double paddingCircleTakePicture = 20;
  static const double paddingMax = 15;
  static const double paddingMedium = 10;
  static const double paddingNormal = 7;

  // description for pain scale
  static const String painScale0 = 'schmerzfrei';
  static const String painScale1 = 'sehr leicht';
  static const String painScale2 = 'unbehaglich';
  static const String painScale3 = 'tolerierbar';
  static const String painScale4 = 'bedrückend';
  static const String painScale5 = 'sehr bedrückend';
  static const String painScale6 = 'intensiv';
  static const String painScale7 = 'sehr intensiv';
  static const String painScale8 = 'absolut schrecklich';
  static const String painScale9 = 'quälend unerträglich';
  static const String painScale10 = 'unvorstellbar';
}