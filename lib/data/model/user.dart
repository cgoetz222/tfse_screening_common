import 'package:intl/intl.dart';
import 'package:tfse_screening_common/data/model/screening_data.dart';
import 'package:tfse_screening_common/data/model/user_status.dart';

import '../../helper/bmi.dart';

class User {
  String dbKey = '';
  String schoolYearDBKey = '';
  String warmupsExerciseListID = '';
  String mainWorkoutsExerciseListID = '';
  String stretchingsExerciseListID = '';
  String name = '';
  String gender = '';
  DateTime birthday = DateTime.now();
  int height = 0;
  int weight = 0;
  double abdominalGirth = 0.0;
  double bicepsLGirth = 0.0;
  double bicepsRGirth = 0.0;
  double femoralLGirth = 0.0;
  double femoralRGirth = 0.0;
  String specials = '';
  String equipment = '';
  int photos = 0;
  ScreeningData screeningData;
  UserStatus userStatus;


  User(this.dbKey, this.schoolYearDBKey, this.warmupsExerciseListID, this.mainWorkoutsExerciseListID, this.stretchingsExerciseListID,
      this.name, this.gender, this.birthday, this.height, this.weight,
      this.abdominalGirth, this.bicepsLGirth, this.bicepsRGirth, this.femoralLGirth, this.femoralRGirth,
      this.specials, this.equipment, this.photos, this.screeningData, this.userStatus
      );

  factory User.fromJson(String dbKey, Map<String, dynamic> json) {
    String dbKeyLocal;
    final String schoolYearDBKey;
    final String warmupsExerciseListID;
    final String mainWorkoutsExerciseListID;
    final String stretchingsExerciseListID;
    final String name;
    final String gender;
    final DateTime birthday;
    final int height;
    final int weight;
    final double abdominalGirth;
    final double bicepsLGirth;
    final double bicepsRGirth;
    final double femoralLGirth;
    final double femoralRGirth;
    final String specials;
    final String equipment;
    final int photos;
    final ScreeningData screeningData;
    final UserStatus userStatus;

    if(json['dbKey'] != null) {
      dbKeyLocal = json['dbKey'] as String;
    } else {
      dbKeyLocal = '';
    }
    if(json['schoolYearDBKey'] != null) {
      schoolYearDBKey = json['schoolYearDBKey'] as String;
    } else {
      schoolYearDBKey = '';
    }
    if(json['warmupsExerciseListID'] != null) {
      warmupsExerciseListID = json['warmupsExerciseListID'] as String;
    } else {
      warmupsExerciseListID = '';
    }
    if(json['mainWorkoutsExerciseListID'] != null) {
      mainWorkoutsExerciseListID = json['mainWorkoutsExerciseListID'] as String;
    } else {
      mainWorkoutsExerciseListID = '';
    }
    if(json['stretchingsExerciseListID'] != null) {
      stretchingsExerciseListID = json['stretchingsExerciseListID'] as String;
    } else {
      stretchingsExerciseListID = '';
    }
    if(json['name'] != null) {
      name = json['name'] as String;
    } else {
      name = '';
    }
    if(json['gender'] != null) {
      gender = json['gender'] as String;
    } else {
      gender = '';
    }
    if(json['birthday'] != null) {
      birthday = DateFormat("dd.MM.yyyy").parse(json['birthday']);
    } else {
      birthday = DateTime.now();
    }
    if(json['height'] != null) {
      height = json['height'] as int;
    } else {
      height = 0;
    }
    if(json['weight'] != null) {
      weight = json['weight'] as int;
    } else {
      weight = 0;
    }
    if(json['abdominalGirth'] != null) {
      abdominalGirth = json['abdominalGirth'] as double;
    } else {
      abdominalGirth = 0;
    }
    if(json['bicepsLGirth'] != null) {
      bicepsLGirth = json['bicepsLGirth'] as double;
    } else {
      bicepsLGirth = 0;
    }
    if(json['bicepsRGirth'] != null) {
      bicepsRGirth = json['bicepsRGirth'] as double;
    } else {
      bicepsRGirth = 0;
    }
    if(json['femoralLGirth'] != null) {
      femoralLGirth = json['femoralLGirth'] as double;
    } else {
      femoralLGirth = 0;
    }
    if(json['femoralRGirth'] != null) {
      femoralRGirth = json['femoralRGirth'] as double;
    } else {
      femoralRGirth = 0;
    }
    if(json['specials'] != null) {
      specials = json['specials'] as String;
    } else {
      specials = '';
    }
    if(json['equipment'] != null) {
      equipment = json['equipment'] as String;
    } else {
      equipment = '';
    }
    if(json['photos'] != null) {
      photos = json['photos'] as int;
    } else {
      photos = 0;
    }
    if(json['screeningData'] != null) {
      screeningData = ScreeningData.fromJson(json['screeningData']);
    } else {
      screeningData = ScreeningData(0, true, [], 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    }
    if(json['userStatus'] != null) {
      userStatus = UserStatus.fromJson(json['userStatus']);
    } else {
      userStatus = UserStatus(false, false, DateTime.now(), DateTime.now(), DateTime.now());
    }

    if(dbKey.isNotEmpty) {
      dbKeyLocal = dbKey;
    }

    return User(
        dbKeyLocal,
        schoolYearDBKey,
        warmupsExerciseListID,
        mainWorkoutsExerciseListID,
        stretchingsExerciseListID,
        name,
        gender,
        birthday,
        height,
        weight,
        abdominalGirth,
        bicepsLGirth,
        bicepsRGirth,
        femoralLGirth,
        femoralRGirth,
        specials,
        equipment,
        photos,
        screeningData,
        userStatus,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'dbKey': dbKey,
      'schoolYearDBKey': schoolYearDBKey,
      'warmupsExerciseListID': warmupsExerciseListID,
      'mainWorkoutsExerciseListID': mainWorkoutsExerciseListID,
      'stretchingsExerciseListID': stretchingsExerciseListID,
      'name': name,
      'gender': gender,
      'birthday': getBirthdayAsString(),
      'height' : height,
      'weight' : weight,
      'abdominalGirth' : abdominalGirth,
      'bicepsLGirth' : bicepsLGirth,
      'bicepsRGirth' : bicepsRGirth,
      'femoralLGirth' : femoralLGirth,
      'femoralRGirth' : femoralRGirth,
      'specials' : specials,
      'equipment' : equipment,
      'photos' : photos,
      'screeningData' : screeningData.toJson(),
      'userStatus' : userStatus.toJson()
    };
  }

  String getBirthdayAsString() {
    String bd = birthday.day.toString();
    bd = bd + ".";
    bd = bd + birthday.month.toString();
    bd = bd + ".";
    bd = bd + birthday.year.toString();

    return bd;
  }

  String getAge() {
    DateTime currentDate = DateTime.now();
    int age = currentDate.year - birthday.year;
    int month1 = currentDate.month;
    int month2 = birthday.month;
    if (month2 > month1) {
      age--;
    } else if (month1 == month2) {
      int day1 = currentDate.day;
      int day2 = birthday.day;
      if (day2 > day1) {
        age--;
      }
    }
    return age.toString();
  }

  int getAgeAsInt() {
    DateTime currentDate = DateTime.now();
    int age = currentDate.year - birthday.year;
    int month1 = currentDate.month;
    int month2 = birthday.month;
    if (month2 > month1) {
      age--;
    } else if (month1 == month2) {
      int day1 = currentDate.day;
      int day2 = birthday.day;
      if (day2 > day1) {
        age--;
      }
    }
    return age;
  }

  String getMyBMI() {
    return (weight / (height/100.0 * height/100.0)).toStringAsFixed(1);
  }

  String getNormalBMI() {
    BMI bmi = BMI();

    if (gender == 'weiblich') {
      return bmi.getBMIRange('f', getAgeAsInt());
    } else {
      return bmi.getBMIRange('m', getAgeAsInt());
    }
  }

  void addImage(int imageNumber) {
    if(imageNumber == 1) {
      photos += 1;
    } else if(imageNumber == 2) {
      photos += 2;
    } else if(imageNumber == 3) {
      photos += 4;
    }
  }

  void removeImage(int imageNumber) {
    if(imageNumber == 1) {
      photos -= 1;
    } else if(imageNumber == 2) {
      photos -= 2;
    } else if(imageNumber == 3) {
      photos -= 4;
    }
  }
}